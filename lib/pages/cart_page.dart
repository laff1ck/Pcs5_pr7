import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pr_7/models/cart.dart';
import 'package:pr_7/models/service.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Корзина', style: TextStyle(fontFamily: 'Montserrat'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: cart.items.isEmpty
            ? Center(child: Text('Корзина пуста', style: TextStyle(fontFamily: 'Montserrat'),
        ),
        )
            : Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context, index) {
                  return CartItem(cart.items[index]);
                },
              ),
            ),
            Spacer(),
            Text(
              'Сумма: ${cart.totalPrice} ₽',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Перейти к оформлению заказа', style: TextStyle(fontFamily: 'Montserrat'),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final Service service;

  CartItem(this.service);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(service.title, style: TextStyle(fontFamily: 'Montserrat', fontSize: 18)),
                Text('Цена: ${service.price}', style: TextStyle(fontFamily: 'Montserrat'),),
                Text('Количество: ${service.quantity}', style: TextStyle(fontFamily: 'Montserrat'),),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  cart.removeItem(service);
                },
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  cart.addItem(service);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}