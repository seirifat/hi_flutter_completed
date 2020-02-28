## Code Snippet

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
