import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dishes_mobile/features/category/category.dart';
class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, CategoryState state) {
        print('STATE CATEGORY: ${state.status}');
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 50,),
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50,),
              Container(
                height: 100,
                color: Colors.amber[900],
                child: const Center(child: Text('Patisserie', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 100,
                color: Colors.amber[800],
                child: const Center(child: Text('Boulangerie', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 100,
                color: Colors.amber[700],
                child: const Center(child: Text('Gourmand', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 100,
                color: Colors.amber[600],
                child: const Center(child: Text('Petite faim', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 100,
                color: Colors.amber[500],
                child: const Center(child: Text('Cocktail', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 100,
                color: Colors.amber[400],
                child: const Center(child: Text('Sans alcool', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 100,
                color: Colors.amber[300],
                child: const Center(child: Text('Fruités', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 100,
                color: Colors.amber[200],
                child: const Center(child: Text('Vegan', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
            ],
          ),
        );
      },
    );
  }
}



Widget buildCategoryPage() {
  return BlocBuilder<CategoryBloc, CategoryState>(
    builder: (context, CategoryState state) {
      print('STATE CATEGORY: ${state.status}');
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Page Filter',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
