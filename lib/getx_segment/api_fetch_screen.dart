import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/product_controller.dart';

class ApiFetchScreen extends StatefulWidget {
  const ApiFetchScreen({super.key});

  @override
  State<ApiFetchScreen> createState() => _ApiFetchScreenState();
}

class _ApiFetchScreenState extends State<ApiFetchScreen> {
  ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Api Fetch'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Obx( () {
        if(productController.isLoading.value) {
          return Center(child: CircularProgressIndicator(),);
        } else {
          return ListView.separated(
            itemCount: productController.productList.length,
            itemBuilder: (context, index) {
            return Column(
              children: [
              Row(
                children: [
            /*      Container(
                    width: 150,
                    height: 100,
                    margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(productController.productList[index].imageLink ?? "",
                        width: 150,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),*/
                  Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(productController.productList[index].name ?? "Name Not Available", style: TextStyle(fontSize: 18,color: Colors.deepPurple),),
                            Text(productController.productList[index].description ?? "Description Not Available", style: TextStyle(fontSize: 16, color: Colors.deepOrange),),
                            Text(productController.productList[index].brand ?? "Brand Not Available", style: TextStyle(fontSize: 16, color: Colors.blueGrey),),
                            Text(productController.productList[index].price ?? "Price Not Available", style: TextStyle(fontSize: 16, color: Colors.lightBlueAccent),),
                            Text(productController.productList[index].rating ?? "Rating Not Available", style: TextStyle(fontSize: 16, color: Colors.lightGreen),),
                            Text(productController.productList[index].category ?? "Category Not Available", style: TextStyle(fontSize: 14, color: Colors.pink),),

                          ],
                        ),
                      ))
                ],
              )
              ],
            );
          }, separatorBuilder: (BuildContext context, int index) {
              return Material(
                color: Colors.black,
                child: SizedBox(
                  height: 2,

                ),
              );
          },);
        }
      })
    );
  }
}
