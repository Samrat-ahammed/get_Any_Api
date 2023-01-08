
 [List<PostsModel> postList = [] ;

  Future<List<PostsModel>> getPostApi1 ()async{
    final resposne = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts')) ;
    var data = jsonDecode(resposne.body.toString());
    if(resposne.statusCode == 200){
      postList.clear();
      for(Map i in data){
        postList.add(PostsModel.fromJson(i));
      }
      return postList ;
    }else {
      return postList ;
    }
  }
  
    List<Photos> photosList = [];
  
  Future<List<Photos>> getPhotos2 ()async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos')) ;
    var data = jsonDecode(response.body.toString());

    print(data);
    if(response.statusCode == 200){
      for(Map i in data){
        Photos photos = Photos(title: i['title'], url: i['url'] , id: i['id']);
        photosList.add(photos);
      }
      return photosList ;
    }else {
      return photosList ;
    }
  }
   List<UserModel> userList = [] ;

  Future<List<UserModel>> getUserApi3 ()async{
    final response =await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map i in data){
        print(i['name']);
        userList.add(UserModel.fromJson(i));
      }
      return userList;
    }else {
      return userList;

    }
  }

   var data ;
  Future<void> getUserApi4 ()async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if(response.statusCode == 200){
      data = jsonDecode(response.body.toString());
    }else {

    }
  }

  
  Future<ProductsModel> getProductsApi () async {

     final response = await http.get(Uri.parse('https://webhook.site/d24f9761-dfba-4759-bcda-f42f3dd539b7'));
     var data = jsonDecode(response.body.toString());
     if(response.statusCode == 200){
       return ProductsModel.fromJson(data);
     }else {
       return ProductsModel.fromJson(data);

     }
  }
  
  ]


