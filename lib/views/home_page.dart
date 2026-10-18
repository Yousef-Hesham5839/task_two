import 'package:flutter/material.dart';
import 'package:task_two/models/movie.dart';
import 'package:task_two/widgets/movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String query = '';
  bool isGridView = false;


  void searchMovies(String value) {
    setState(() {
      query = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final filteredMovies = movies.where((movie) {
      return movie.title.toLowerCase().contains(query.toLowerCase()) ||
      movie.genre.toLowerCase().contains(query.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Movie Library"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            icon: Icon(
              isGridView
                  ? Icons.view_list
                  : Icons.grid_view,
            ),
            tooltip: 'Switch view',
            onPressed: () {
              setState(() {
                isGridView = !isGridView;
              });
            },
          ),
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            onChanged: searchMovies,
            decoration: InputDecoration(
              hintText: "Search Movies",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ),
        Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Align(
         alignment: Alignment.centerLeft,
         child: Text(
           '${filteredMovies.length} movies found',
          ),
         ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: filteredMovies.isEmpty? Center(
            child: Text("No movies found"),
           )
           : isGridView ? GridView.builder(
            padding: const EdgeInsets.all(12),
            itemBuilder: (BuildContext context, int index)
            {
              return MovieCard(movie: filteredMovies[index]);
            },
            itemCount: filteredMovies.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:     MediaQuery.sizeOf(context).width >= 600 ? 4 : 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: ((MediaQuery.sizeOf(context).width - 34) / 2) / (MediaQuery.sizeOf(context).height * 0.38),
            ),
          )
          : ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: filteredMovies.length,
          itemBuilder: (BuildContext context, int index) {
            return MovieCard(movie: filteredMovies[index]);
          },
        ),
        ),
       ],
      ),
    );
  }
}
