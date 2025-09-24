import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/core/widgets/fridge_app_bar.dart';

import 'package:fridge_tracker/goods/blocs/goods_cubit.dart';
import 'package:fridge_tracker/goods/dtos/fridge_item_dto.dart';

import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

@RoutePage<void>()
class AddItemPage extends StatefulWidget {
  final String userId;

  const AddItemPage({super.key, required this.userId});

  @override
  State<AddItemPage> createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _categoryController = TextEditingController();
  final _quantityController = TextEditingController(text: '1');

  DateTime _bestBefore = DateTime.now().add(const Duration(days: 7));
  XFile? _pickedImage;
  final _picker = ImagePicker();

  @override
  void dispose() {
    _nameController.dispose();
    _categoryController.dispose();
    _quantityController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() => _pickedImage = image);
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();

    final newItem = FridgeItemDTO(
      id: const Uuid().v4(),
      name: _nameController.text,
      category: _categoryController.text,
      quantity: int.tryParse(_quantityController.text) ?? 1,
      timeStored: DateTime.now(),
      bestBeforeDate: _bestBefore,
      imageUrl: _pickedImage?.path ?? '',
    );

    await context.read<GoodsCubit>().addFridgeItem(widget.userId, newItem);

    _nameController.clear();
    _categoryController.clear();
    _quantityController.text = '1';
    setState(() {
      _pickedImage = null;
      _bestBefore = DateTime.now().add(const Duration(days: 7));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GoodsCubit, GoodsState>(
      listener: (context, state) {
        state.maybeMap(
          added: (s) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.lightGreenAccent,
                content: Text(
                  '${s.item.name} added!',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: FridgeAppBar(
          backgroundColor: Colors.green,
          titleWidget: Center(
            child: Text(
              'Add fridge item',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.h),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                SizedBox(height: 20.h),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: "Name"),
                  validator: (val) => val!.isEmpty ? "Required" : null,
                ),
                SizedBox(height: 20.h),
                TextFormField(
                  controller: _categoryController,
                  decoration: const InputDecoration(labelText: "Category"),
                ),
                SizedBox(height: 20.h),
                TextFormField(
                  controller: _quantityController,
                  decoration: const InputDecoration(labelText: "Quantity"),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20.h),
                ListTile(
                  title: const Text("Best before:"),
                  subtitle: Text('${_bestBefore.toLocal()}'.split(" ")[0]),
                  trailing: const Icon(Icons.calendar_today),
                  onTap: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: _bestBefore,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2100),
                    );
                    if (picked != null) {
                      setState(() => _bestBefore = picked);
                    }
                  },
                ),
                SizedBox(height: 16.h),
                _pickedImage == null
                    ? TextButton.icon(
                        onPressed: _pickImage,
                        icon: const Icon(Icons.image, color: Colors.black54),
                        label: const Text(
                          "Pick Image",
                          style: TextStyle(color: Colors.black54),
                        ),
                      )
                    : Image.file(File(_pickedImage!.path), height: 150.h),
                SizedBox(height: 24.h),
                ElevatedButton(
                  onPressed: _submit,
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                      Colors.lightGreen,
                    ),
                  ),
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
