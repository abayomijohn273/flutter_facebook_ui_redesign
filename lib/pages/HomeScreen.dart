import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[500],
                          size: 25,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey[900],
                  size: 30,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        "Stories",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                        ),
                      ),
                      Text(
                        "See Archive",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        displayUploadedStories(
                          uploadedImage: "assets/images/stories/story-1.jpg",
                          userFullName: "Abayomi John",
                          userProfileImage: "assets/images/aatik-tasneem.jpg",
                        ),
                        displayUploadedStories(
                          uploadedImage: "assets/images/stories/story-2.jpg",
                          userFullName: "Akintunde Pelumi",
                          userProfileImage: "assets/images/aiony-haust.jpg",
                        ),
                        displayUploadedStories(
                          uploadedImage: "assets/images/stories/story-3.jpg",
                          userFullName: "Bode Williams",
                          userProfileImage: "assets/images/averie-woodard.jpg",
                        ),
                        displayUploadedStories(
                          uploadedImage: "assets/images/stories/story-4.jpg",
                          userFullName: "Olabode Cecilia",
                          userProfileImage: "assets/images/azamat-zhanisov.jpg",
                        ),
                        displayUploadedStories(
                          uploadedImage: "assets/images/stories/story-5.jpg",
                          userFullName: "Wunmi Weyinmi",
                          userProfileImage: "assets/images/foto-sushi.jpg",
                        ),
                        displayUploadedStories(
                          uploadedImage: "assets/images/stories/story-6.jpg",
                          userFullName: "James Cole",
                          userProfileImage: "assets/images/jurica-koletic.jpg",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  displayFeed(
                      userFullName: "Abayomi Olatunji",
                      userAvatar: "assets/images/aatik-tasneem.jpg",
                      uploadedTime: "1hr ago",
                      feedArticle:
                          "All the Lorem Ipsum article on the internet tend to return predefined. Lorem Ipsum belives that every system with dummy content should use it.",
                      feedImage: ""),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget displayUploadedStories(
      {String uploadedImage, String userProfileImage, String userFullName}) {
    return AspectRatio(
      aspectRatio: 2.5 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(uploadedImage),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                  image: DecorationImage(
                    image: AssetImage(userProfileImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                userFullName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget displayFeed(
      {String userFullName,
      String userAvatar,
      String uploadedTime,
      String feedArticle,
      String feedImage}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(userAvatar),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      userFullName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      uploadedTime,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                right: 10,
              ),
              child: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
                size: 30,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          feedArticle,
          style: TextStyle(color: Colors.grey[600], height: 1.4),
        ),
        SizedBox(
          height: 15,
        ),
        // feedImage == null
        //     ? null
        //     : Container(
        //         height: 200,
        //         decoration: BoxDecoration(
        //           color: Colors.black,
        //           borderRadius: BorderRadius.circular(10),
        //         ),
        //         child: Image.asset(
        //           feedImage,
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 17,
                  ),
                ),
                Transform.translate(
                  offset: Offset(-5, 0),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "2.5k",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "400",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Comments",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: <Widget>[
            FlatButton(
              onPressed: null,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey[700],
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text("Like"),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: null,
                child: Text("Comment"),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: null,
                child: Text("Share"),
              ),
            ),
          ],
        )
      ],
    );
  }
}
