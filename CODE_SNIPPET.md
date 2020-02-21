## hi_flutter_completed

# Suitmedia Mobile 2020,

## Code Snippet

### **[LOGIN PAGE]**

#### 1. BUILD_LOGIN_MAIN_BODY  
	// TODO: BUILD_LOGIN_MAIN_BODY
    return SafeArea(
      child: Center(
        child: ListView(
          physics: ClampingScrollPhysics(), // Disable Bounce on iOS
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            _buildLogo(),
            SizedBox(height: 48.0),
            _buildEmailTexField(),
            SizedBox(height: 16.0),
            _buildPasswordTexField(),
            SizedBox(height: 32.0),
            _buildLoginButton(context),
            SizedBox(height: 16.0),
            FlatButton(child: Text('Forgot password?'), onPressed: () {})
          ],
        ),
      ),
    );
    

#### 2. BUILD_LOGIN_IMAGE  
    // TODO: BUILD_LOGIN_IMAGE
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('lib/images/img_logo.png'),
        )
      ],
    );
    
#### 3. BUILD_EMAIL_TEXTFIELD
    // TODO: BUILD_EMAIL_TEXTFIELD
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_outline, size: 22),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        hintText: 'Email',
      ),
    );

#### 4. BUILD_PASSWORD_TEXTFIELD
    // TODO: BUILD_PASSWORD_TEXTFIELD
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock, size: 22),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        hintText: 'Password',
      ),
    );
    
#### 5. TODO: BUILD_LOGIN_BUTTON
    // TODO: BUILD_LOGIN_BUTTON
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 5.0,
        minWidth: 20.0,
        height: 44.0,
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => MainPage(),
              fullscreenDialog: true,
            ),
          );
        },
        color: Theme.of(context).primaryColor,
        child: Text('Login', style: TextStyle(color: Colors.white)),
      ),
    );

### **[MAIN PAGE]**

#### 1. BUILD_LIST_MODEL
    // TODO: BUILD_LIST_MODEL
    List<Widget> _promoWidgets = [
      _buildListCardPromo(
        PromoModel(
          AssetImage('lib/images/promo1.jpg'),
          'Promo CFC Diskon 50% dengan Kupon LINE',
          '17 Februari 2020',
        ),
      ),
      _buildListCardPromo(
        PromoModel(
          AssetImage('lib/images/promo2.jpg'),
          'Promo Wingstop Flavor Eat Beli 5 Gratis 5',
          '11 Februari 2020',
        ),
      ),
      _buildListCardPromo(
        PromoModel(
          AssetImage('lib/images/promo3.jpg'),
          'Promo Roti\'O Paket Setia Rp48.000',
          '11 Februari 2020',
        ),
      ),
      _buildListCardPromo(
        PromoModel(
          AssetImage('lib/images/promo4.jpg'),
          'Promo Roti\'O Beli 3 Gratis 1',
          '08 Februari 2020',
        ),
      ),
      _buildListCardPromo(
        PromoModel(
          AssetImage('lib/images/promo5.jpg'),
          'Promo Raacha Suki & BBQ Paket Mantap Mulai Rp 37.272',
          '07 Februari 2020',
        ),
      ),
    ];
    
#### 2. BUILD_LIST_VIEW
    // TODO: BUILD_LIST_VIEW
    return ListView.builder(
      padding: EdgeInsets.only(top: 0),
      itemCount: 2 + promoWidgets.length,
      itemBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return _buildHeader();
            break;
          case 1:
            return _buildIconsMenu();
            break;
          default:
            return promoWidgets[index - 2];
        }
      },
    );
    
#### 3. BUILD_HEADER
    // TODO: BUILD_HEADER
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: <Widget>[
        _buildImageBg(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: statusBarHeight + 24),
            Text(
              'Hi, Flutter!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
            SizedBox(height: 24),
            _buildBalanceCard(),
            SizedBox(height: 16),
          ],
        ),
      ],
    );
    
#### 4. BUILD_BALANCE_CARD
    // TODO: BUILD_BALANCE_CARD
    double widthSize = MediaQuery.of(context).size.width * 0.90;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Container(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
        width: widthSize,
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Balance',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: <Widget>[
                  Text('Rp. '),
                  Text('1.200.000',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(color: Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildButtonIcon(Icons.payment, 'Pay'),
              _buildButtonIcon(Icons.account_balance_wallet, 'Top Up'),
              _buildButtonIcon(Icons.stars, 'Rewards'),
            ],
          ),
        ]),
      ),
    );
    
#### 5. BUILD_ICONS_MENU
    // TODO: BUILD_ICONS_MENU
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 24),
            _buildButtonIcon(Icons.fastfood, 'Food', isCircular: true),
            _buildButtonIcon(Icons.directions_car, 'Car', isCircular: true),
            _buildButtonIcon(Icons.directions_bike, 'Bike', isCircular: true),
            _buildButtonIcon(Icons.inbox, 'Delivery', isCircular: true),
            SizedBox(width: 24),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 24),
            _buildButtonIcon(Icons.store_mall_directory, 'Rent',
                isCircular: true),
            _buildButtonIcon(Icons.receipt, 'Tickets', isCircular: true),
            _buildButtonIcon(Icons.local_hospital, 'Health', isCircular: true),
            _buildButtonIcon(Icons.more_horiz, 'More', isCircular: true),
            SizedBox(width: 24),
          ],
        ),
        SizedBox(height: 8),
        Divider(thickness: 8, color: Colors.grey[200]),
        SizedBox(height: 8),
      ],
    );
    
#### 6. BUILD_BUTTON_ICON
    // TODO: BUILD_BUTTON_ICON
    return Expanded(
      flex: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        highlightColor: Colors.transparent,
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              (isCircular
                  ? Container(
                      height: 48,
                      width: 48,
                      child: Icon(iconData, size: 24, color: Colors.white),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle,
                      ),
                    )
                  : Icon(iconData,
                      size: 40, color: Theme.of(context).primaryColor)),
              SizedBox(height: 8),
              Text(text)
            ],
          ),
        ),
      ),
    );
    
#### 7. BUILD_CARD_ITEM_LIST
    // TODO: BUILD_CARD_ITEM_LIST
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 3,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.90,
          // height: 270,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image(
                  height: 190,
                  image: model.image,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(model.title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        Icon(Icons.date_range, size: 16, color: Colors.grey),
                        SizedBox(width: 8),
                        Text(model.postedDate)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    
#### 8. BUILD_BG_IMAGE
    // TODO: BUILD_BG_IMAGE
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
            Theme.of(context).primaryColor.withOpacity(0.45),
            BlendMode.srcOver),
        child: Image(
          image: AssetImage('lib/images/img_sunset.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );

#### 9. BUILD_MODEL_CLASS
    // TODO: BUILD_MODEL_CLASS
    //
    class PromoModel {
      AssetImage image;
      String title;
      String postedDate;
      PromoModel(this.image, this.title, this.postedDate);
    }
