import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_repo_search_app/model/github_repo_model.dart';

class ListCard extends StatelessWidget {
  final GithubRepoModel repo;
  const ListCard({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${repo.owner.name}/", style: TextStyle(fontSize: 10.sp)),
            Text(
              repo.name,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
