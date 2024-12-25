import UIKit
//ARRAY
var myFavouriteMovies=["a","b","c","d"] //bu diziye int tipinde eğişken yazamazsın ama as[ANY] KOYARSAK HERHANGİ BİR ŞEY EKLEYEBİLİRİZ

myFavouriteMovies[0]
myFavouriteMovies[1]

var myStringArray=["Test","Test1","Test3","Test2"]
myStringArray[0].uppercased()

myStringArray.count//dizi kaç elemanlı

//son indexi getirir
myStringArray.last
myStringArray[myStringArray.count-1]

myStringArray.sort()//kendince alfabetik sıralama yapıyor
myStringArray.append("testt")//diziye ekledi

//SET
//unoreder collection,unique elemnets
//dizi gibi ama aynı elemandan sadece bir tane olabilecek
var mySet :Set=[1,2,3,4,5]
//indeksleme yok
//bir veride aynı elemanları ayrıştırmak için set kullanılabilir
var myInternetArray=[1,2,3,4,5,4,3,4,4]
var myInternetSet=Set(myInternetArray)

var mySet1: Set=[1,2,3]
var mySet2: Set=[3,4,5]
var mySet3=mySet1.union(mySet2)
print(mySet3)

//dictionary-hash map
//key value pairing
var myFavouriteDirectors=["Pulp Fiction":"Tarantino","Lock,Stock":"Guy Ritchie","The Dark Knight":"Nolan"]
myFavouriteDirectors["Pulp Fiction"]
//etiket yaptık
myFavouriteDirectors["Pulp Fiction"]="Quentin Tarantino"
print(myFavouriteDirectors)
//yukarıdaki örnekte değerini değiştirdim


