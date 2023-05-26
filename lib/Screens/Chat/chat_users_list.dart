import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:darl_dispatch/Models/firestore_constants.dart';
import 'package:darl_dispatch/Models/user_chat_model.dart';
import 'package:darl_dispatch/Screens/Chat/chat_list_provider.dart';
import 'package:darl_dispatch/Screens/Chat/chat_page.dart';
import 'package:darl_dispatch/Utils/chat_keyboard_utils.dart';
import 'package:darl_dispatch/Utils/progress_bar.dart';
import 'package:darl_dispatch/sample_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChatUsersList extends StatefulWidget {
  const ChatUsersList({Key? key}) : super(key: key);

  @override
  State<ChatUsersList> createState() => _ChatUsersListState();
}

class _ChatUsersListState extends State<ChatUsersList> {
  bool isLoading = false;
  late final ChatListProvider chatListProvider = context.read<ChatListProvider>();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;
  int _limit = 20;
  String _textSearch = "";

  List<QueryDocumentSnapshot<Object?>>? userMap;

  late final String currentUsrId;

  @override
  void initState() {
    if(firebaseAuth.currentUser!.uid.isNotEmpty == true){
      currentUsrId = firebaseAuth.currentUser!.uid;
    }
    else{
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Samplepage()),
          //  (Route<dynamic> route) => false,
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            "All Users",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                children: [
                  builSearchBar(),
                  Expanded(
                      child: StreamBuilder<QuerySnapshot>(
                        stream: chatListProvider.getStreamFireStore(FirestoreConstants.pathUserCollection,
                            _limit, _textSearch),
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {

                          if (snapshot.hasData) {
                            if ((snapshot.data?.docs.length ?? 0) > 0) {

                              return ListView.builder(
                                  itemCount: snapshot.data?.docs.length,
                                  itemBuilder: (context, index) => buildItem(
                                      context, snapshot.data?.docs[index]));
                            } else {
                              return Center(
                                child: Text("No users"),
                              );
                            }
                          } else {
                            return Center(
                              child: CircularProgressIndicator(
                                color: Colors.green,
                              ),
                            );
                          }
                        },
                      ))
                ],
              ),

              Positioned(
                child: isLoading ? ProgressBar() : SizedBox.shrink(),
              )
            ],
          ),
        ));
  }

  Widget builSearchBar() {
    return Container();
  }

  Widget buildItem(BuildContext context,
      QueryDocumentSnapshot<Object?>? document) {
    if (document != null) {
      UserChatModel userChatModel = UserChatModel.fromDocument(document);

      if (userChatModel.id == currentUsrId) {
        return SizedBox.shrink();
      } else {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w,),
          child: InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(
              arguments: ChatPageArgument(
                peerId: userChatModel.id,
                peerName: userChatModel.name
              ),

            )));
          },
            child: Container(
              height: 8.h,
              child: Card(
                child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: Row(
                  children: [
                    CircleAvatar(child: Icon(Icons.person, color: Colors.white,),),
                    SizedBox(width: 3.w,),
                    Text("${userChatModel.name}", style: TextStyle(color: Colors.black87, fontSize: 17.sp),)
                  ],
                ),
              ),),
            ),
          ),
        );
      }
    } else {
      return SizedBox.shrink();
    }
  }
}
