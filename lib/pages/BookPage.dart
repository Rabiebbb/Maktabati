import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:like_button/like_button.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      builder: (_, controller) => Container(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: SvgPicture.asset(
                    "assets/Rectangle.svg",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(20.0), // Adjust the radius here
                    child: Image.asset(
                      'assets/ezgifcom.jpg',
                      fit: BoxFit.cover,
                      width: 10,
                      height: 300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                // color: Colors.grey,
                                width: 320,
                                child: Text(
                                  'The Da Vinci Code',
                                  style: TextStyle(
                                    fontFamily: 'Rale',
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              LikeButton(
                                bubblesColor: BubblesColor(
                                  dotPrimaryColor: Colors.green,
                                  dotSecondaryColor: Colors.green.shade100,
                                ),
                                circleColor: CircleColor(
                                  start: Colors.green,
                                  end: Colors.green,
                                ),
                                likeBuilder: (isLiked) {
                                  return Icon(
                                    Icons.favorite,
                                    color: isLiked ? Colors.green : Colors.grey,
                                    size: 29,
                                  );
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, '/Auteur'),
                            child: Container(
                              // color: Colors.grey,
                              alignment: Alignment.centerLeft,
                              width: 360,
                              child: Text(
                                'Dan Brown',
                                style: TextStyle(
                                  fontFamily: 'Rale',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            // color: Colors.grey,
                            alignment: Alignment.centerLeft,
                            width: 360,
                            // height: 300,
                            child: Text(
                              "Robert Langdon, un professeur de symbologie, et Sophie Neveu, une cryptologue française, alors qu'ils enquêtent sur le meurtre mystérieux du conservateur du musée du Louvre, Jacques Saunière. Leur quête les mène à travers Paris et au-delà, déchiffrant des codes et découvrant des secrets cachés dans les œuvres de Léonard de Vinci.",
                              style: TextStyle(
                                fontFamily: 'Rale',
                                fontSize: 15,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                            alignment: Alignment.center,
                            width: 360,
                            height: 60,
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () => Navigator.pushNamed(
                                    context, '/Exemplaires'),
                                child: Text(
                                  'Voir exemplaires',
                                  style: TextStyle(
                                    fontFamily: "Rale",
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  foregroundColor:
                                      const Color.fromARGB(0, 255, 255, 255),
                                  backgroundColor:
                                      const Color.fromARGB(0, 255, 255, 255),
                                  shadowColor:
                                      const Color.fromARGB(0, 255, 255, 255),
                                  splashFactory: NoSplash
                                      .splashFactory, // Disable splash effect
                                  elevation: 0,
                                  fixedSize: Size(500, 70),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    ),
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
