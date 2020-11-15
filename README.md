# Flutter Study Notes

-This repository was created to facilitate flutter learning.
-In each lesson, I demonstrated the use of various flutter widgets.

# Below are the topics you can find in my study.
- AlertDialog
- SingleChildScrollView
- ListView
- BoxDecoration
- Card
- ListTile
- Divider
- GestureDetector
- GridViewBuilder
- ListClickEvent
- Package Using
- Navigation Basic
- Navigation Push Replacement
- Navigation Then Will PopScope
- Navigation Initial - UnknowRoute
- onGenerateRoute
- SeperatorBuilder
- Sliver AppBar
- Sliver Grid Types
- Sliver Types
- Checkbox
- List Tiles
- datetimepicker
- stepper
- Custom Fonts
- Image management
- TextField
- TextFormField
- Route Management
- Drawer
- Inkwell 
- BottomNavBar

# Sample Applications
- Fashion App
- Horoscope App
- Dynamic Grade Calculator

### Custom Widgets For Fast Start
```javascript
  Padding buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 80.0,
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: TextFormField(
            obscureText: true,
            keyboardType: TextInputType.text,
            textAlign: TextAlign.justify,
            decoration: InputDecoration(
              //prefix: Icon(Icons.email),
              prefixIcon: Icon(Icons.lock_outline),
              //prefix: Text("ssad"),
              hintText: "Please enter your password",
              labelText: "Password",
              border: InputBorder.none,
            ),
            //initialValue: "firs value",
            validator: validatePassword,
            onSaved: (val) => _password = val,
          ),
        ),
      ),
    );
  }

  Padding buildEmailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 80.0,
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.justify,
            decoration: InputDecoration(
              //prefix: Icon(Icons.email),
              prefixIcon: Icon(Icons.email_outlined),
              //prefix: Text("ssad"),
              hintText: "Please email address",
              labelText: "Email",
              border: InputBorder.none,
            ),
            //initialValue: "firs value",
            validator: validateEmail,
            onSaved: (val) => _emailAddress = val,
          ),
        ),
      ),
    );
  }

  Padding buildSurnameField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Container(
        width: 580,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 80.0,
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: TextFormField(
            textAlign: TextAlign.justify,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_circle),
              //prefix: Icon(Icons.account_circle),
              hintText: "Please enter surname",
              labelText: "Surname",
              border: InputBorder.none,
            ),
            //initialValue: "firs value",
            validator: (String val) {
              if (val.length < 3) {
                return "Your surname must be greater than 3.";
              } else {
                return null;
              }
            },
            onSaved: (val) => _surname = val,
          ),
        ),
      ),
    );
  }

  Padding buildNameField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 80.0,
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: TextFormField(
            textAlign: TextAlign.justify,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_circle),
              //prefix: Text("ssad"),
              hintText: "Please enter name",
              labelText: "Name",
              border: InputBorder.none,
            ),
            //initialValue: "firs value",
            validator: (String val) {
              if (val.length < 3) {
                return "Your name must be greater than 3.";
              } else {
                return null;
              }
            },
            onSaved: (val) => _name = val,
          ),
        ),
      ),
    );
  }
  
    void _validateEntrance() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      debugPrint(
          "Input mail : $_emailAddress Input pass : $_password  Input name : $_name Input surname : $_surname");
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }
}

      RaisedButton.icon(
                            elevation: 5.0,
                            onPressed: _validateEntrance,
                            icon: Icon(Icons.send_rounded),
                            label: Text("Save"),
                            color: Colors.orange,
                            disabledColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
  
```



