import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_todo/core/app_colors.dart';
import 'package:flutter_todo/feature/login_screen/wadgist/profile_widgets.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final _nameController = TextEditingController(text: 'Ahmed Abdelsattar');

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 60.h),
        
              const Center(child: ProfileAvatarWidget()),
              
              SizedBox(height: 24.h),
          
              Text(
                'Create Your Profile',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleText,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Add your name and profile picture',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.subtitleText,
                ),
              ),
              
              SizedBox(height: 32.h),
              

              CustomInputField(
                label: 'Full Name',
                hintText: 'Enter your name',
                controller: _nameController,
              ),
              
              SizedBox(height: 28.h),
          
              CustomPrimaryButton(
                text: 'Continue',
                onPressed: () {
                
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}