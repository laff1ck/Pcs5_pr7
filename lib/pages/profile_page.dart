import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  final Color phoneColor;
  final Color emailColor;
  final Color linkColor;

  ProfilePage({
    this.phoneColor = Colors.black38,
    this.emailColor = Colors.black38,
    this.linkColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль', style: TextStyle(fontFamily: 'Montserrat')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Алексей',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '+7 900 800-55-33',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: phoneColor,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'email@gmail.com',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: emailColor,
              ),
            ),
            SizedBox(height: 32),
            ProfileOption(
              iconPath: 'assets/icons/Order.png',
              title: 'Мои заказы',
            ),
            ProfileOption(
              iconPath: 'assets/icons/Cards.png',
              title: 'Медицинские карты',
            ),
            ProfileOption(
              iconPath: 'assets/icons/Adress.png',
              title: 'Мои адреса',
            ),
            ProfileOption(
              iconPath: 'assets/icons/Settings.png',
              title: 'Настройки',
            ),
            Spacer(),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Ответы на вопросы',
                      style: TextStyle(fontFamily: 'Montserrat', color: linkColor),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Политика конфиденциальности',
                      style: TextStyle(fontFamily: 'Montserrat', color: linkColor),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Пользовательское соглашение',
                      style: TextStyle(fontFamily: 'Montserrat', color: linkColor),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Выход',
                    style: TextStyle(color: Colors.red, fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final String iconPath;
  final String title;

  ProfileOption({
    required this.iconPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        iconPath,
        width: 24,
        height: 24,
      ),
      title: Text(
        title,
        style: TextStyle(fontFamily: 'Montserrat'),
      ),
      onTap: () {

      },
    );
  }
}