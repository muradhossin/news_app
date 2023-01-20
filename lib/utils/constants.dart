import 'package:intl/intl.dart';

import '../models/category_model.dart';

const String newsApiKey = '8a138a81348146b99ac524b389cdd0e6';

const String catNameBusiness = 'Business';
const String catNameEntertainment = 'Entertainment';
const String catNameGeneral = 'General';
const String catNameHealth = 'Health';
const String catNameScience = 'Science';
const String catNameSports = 'Sports';
const String catNameTechnology = 'Technology';


List<CategoryModel> categoryList = [
  CategoryModel(
    categoryName: "Business",
    imageUrl:
        "https://images.unsplash.com/photo-1526628953301-3e589a6a8b74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1406&q=80",
  ),
  CategoryModel(
    categoryName: "Entertainment",
    imageUrl:
    "https://images.unsplash.com/photo-1533923156502-be31530547c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
  ),
  CategoryModel(
    categoryName: "General",
    imageUrl:
    "https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  ),
  CategoryModel(
    categoryName: "Health",
    imageUrl:
    "https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  ),
  CategoryModel(
    categoryName: "Science",
    imageUrl:
    "https://images.unsplash.com/photo-1532094349884-543bc11b234d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  ),

  CategoryModel(
    categoryName: "Sports",
    imageUrl:
    "https://images.unsplash.com/photo-1517649763962-0c623066013b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  ),
  CategoryModel(
    categoryName: "Technology",
    imageUrl:
    "https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  ),

];
