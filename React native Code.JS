//import * as React from 'react';
import React, { Component } from 'react';
import { AppRegistry,  Text,  View,  StyleSheet,  Picker,  ScrollView,  Platform,  Button,  Alert,  Image} from 

'react-native';
import { Constants } from 'expo';

export default class FlexDirectionBasics extends Component {
  state = { user: 'rating', user1: 'Crime', user4: '10', data:<Text style={{color:'white'}}>oppa1</Text>, currentpage:1, nextpage:2, previouspage:1, nonext:'yes',noprevious: 'yes'};
 incoming={};


  updateUser = user => {
    this.setState({ user: user });
  };
_onPressButtonnex = () => {
  
  if(this.state.nonext=="no"){
   this.setState({ currentpage: this.state.nextpage }); 
   this._onPressButton;
  }
     };
_onPressButtonpre = () => {
     if(this.state.noprevious=="no"){
   this.setState({ currentpage: this.state.previouspage }); 
   this._onPressButton;
  }
  };


  updateUser1 = user5 => {
    this.setState({ user1: user5 });
  };

  updateUser4 = user6 => {
    this.setState({ user4: user6 });
  };

  dataupdate = datain => {
   
    this.setState({ data: datain });
  };

  _onPressButton = () => {
    let sort = this.state.user;
    let genre = this.state.user1;
    let results = this.state.user4;
  

    let jsondatatosend = JSON.stringify({
      sortby: this.state.user,
      genre: this.state.user1,
      resultperpage: this.state.user4,
      pagenumber: this.state.currentpage,
    });


    let movies = [];
    let result='';
    

    fetch('http://acidmovie.dx.am/getdata.php?new=' + jsondatatosend)
      .then(response => response.json())
      .then(responseJson => {

        this.incoming=responseJson;

         this.setState({ nextpage: this.incoming.nextpage }); 
          this.setState({ previouspage: this.incoming.previouspage }); 
           this.setState({ currentpage: this.incoming.currentpage });

let totalarray=Object.keys(this.incoming).length;
let num3=totalarray-5;
for (let i = 0; i < num3; i++) {
  result="result"+i;
  if(this.incoming[result].title.length>2){

movies.push(<Image source={{uri: this.incoming[result].image}} style={{flex:1, width: 300, height: 300 ,backgroundColor:'yellow',margin: 1}}/>);
   movies.push(<Text style={{fontSize:25,color:'white' ,fontWeight: "bold",marginTop:200 }}>{"\n"}{this.incoming[result].title}</Text>);
   movies.push(<Text style={{fontSize:15,color:'white' ,fontWeight: "bold" }}>{"\n  "}{this.incoming[result].releaseyear}{"\n Rating: "}{this.incoming[result].rating}{"/10\n"}</Text>);
  movies.push(<Text style={{fontSize:15,color:'white' ,fontWeight: "bold" }}>{"\n"}{this.incoming[result].description}{"\n"}</Text>);
  movies.push(<Text style={{fontSize:15,color:'white' ,fontWeight: "bold" }}>{"\n  Directed By:"}{this.incoming[result].director}{"\n\n  Actors:"}{this.incoming[result].actors}{"\n"}</Text>);
  movies.push(<Text style={{fontSize:15,color:'white' ,fontWeight: "bold" }}>{"\n Revenues: "}{this.incoming[result].profit}{"\n"}</Text>);
 
}
}




this.setState({ data: <Text style={{backgroundColor:'black'}}>{movies}</Text> });


        return responseJson;
      })
      .catch(error => {
        Alert.alert('fail');
        console.error(error);
      });

  };

 
  render() {
   

    return (
      // Try setting `flexDirection` to `column`.
      <View style={{ flex: 1, backgroundColor: 'black' }}>
        <View style={{ flex: 1, backgroundColor: 'black', marginTop: 30 }}>
          <Text style={{ color: 'orange', textAlign: 'center', fontWeight: "bold" ,fontSize: 30 }}>
            ACID Movie Database
          </Text>
        </View>
        <View style={styles.container}>
          <View style={{ flex: 1, backgroundColor: '#ebebe0' }}>
            <Text style={{ color: 'black', fontSize: 20, textAlign: 'center' }}>
              Sort By
            </Text>
            <Picker
              selectedValue={this.state.user}
              onValueChange={this.updateUser}>
              <Picker.Item label="Title" value="title"/>
              <Picker.Item label="Rating" value="rating"/>
              <Picker.Item label="Release" value="release"/>
            </Picker>
          </View>
          <View style={{ flex: 1, margin: 0, backgroundColor: '#e1e1d0' }}>
            <Text style={{ color: 'black', fontSize: 20, textAlign: 'center' }}>
              Genre
            </Text>
            <Picker
              selectedValue={this.state.user1}
              onValueChange={this.updateUser1}>
              <Picker.Item label="Drama" value="Drama" />
              <Picker.Item label="Western" value="Western" />
              <Picker.Item label="Crime" value="Crime" />
              <Picker.Item label="Sci-Fi" value="Sci-Fi" />
              <Picker.Item label="War" value="War" />
              <Picker.Item label="Romance" value="Romance" />
              <Picker.Item label="Biography" value="Biography" />
              <Picker.Item label="Sport" value="Sport" />
              <Picker.Item label="Thriller" value="Thriller" />
              <Picker.Item label="Family" value="Family" />
              <Picker.Item label="Comedy" value="Comedy" />
              <Picker.Item label="Adventure" value="Adventure" />
              <Picker.Item label="History" value="History" />
              <Picker.Item label="Musical" value="Musical" />
              <Picker.Item label="Action" value="Action" />
            </Picker>
          </View>
          <View style={{ flex: 1, backgroundColor: '#ebebe0' }}>
            <Text style={{ color: 'black', fontSize: 20, textAlign: 'center' }}>
              Page results
            </Text>
            <Picker
              selectedValue={this.state.user4}
              onValueChange={this.updateUser4}>
              <Picker.Item label="5" value="5" />
              <Picker.Item label="10" value="10" />
              <Picker.Item label="15" value="15" />
            </Picker>
          </View>
        </View>
        <View
          style={{ flex: 1, backgroundColor: 'transparent',fontSize: 30, flexDirection: 'column'  }}>
          <Button 
          
            color="#ff944d"
            title="List  >>"
            onPress={this._onPressButton}
          />
        </View>
        <View style={{ flex: 7, backgroundColor: 'black' }}>
          <ScrollView> 
          <View style={{ flex: 1}}>
          {this.state.data}
          </View>
           <View style={{ flex: 1, backgroundColor: 'orange',flexDirection: 'row'  }}>
          <View style={{ flex: 1}}>
          <Text style={{fontSize:40, textAlign: 'center'}} onPress={this._onPressButtonpre}>Previous</Text>
          </View>
          <View style={{ flex: 1}}>
          <Text style={{fontSize:40, textAlign: 'center'}} onPress={this._onPressButtonnex}>Next</Text></View>
        </View> 
           </ScrollView>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flexDirection: 'row',

    ...Platform.select({
      ios: {
        flex: 4,
      },
      android: {
        flex: 1.5,
      },
    }),
  },
});

// skip this line if using Create React Native App
AppRegistry.registerComponent('AwesomeProject', () => FlexDirectionBasics);
