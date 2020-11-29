
//создать 2 параметризированных tuples вида(mySquats: Int, myPushUps: Int,myPullUps: Int)
//распечатать  tupl и еще раз используя интерполяцию(используя и индекс и параметр
//через промежуточный tuple и поменять значения двух  первых tuples местами
//посчитать разницу между двумя разными tuples и вывести его через принт
var myStats = (mySquats:100, myPushUps:20, myPullUps:7)
var friendStats = (friendSquats:110, friendPushUps:25, friendPullUps:11)

print((myStats.mySquats, myStats.myPushUps,myStats.myPullUps))

print("My personal stats: \n My squats  \(myStats.mySquats) \n My push ups \(myStats.1) \n My pull ups \(myStats.myPullUps)")

var otherStats = myStats

(myStats.mySquats, myStats.myPushUps, myStats.myPullUps) = (friendStats.friendSquats, friendStats.friendPushUps, friendStats.friendPullUps)
(friendStats.friendSquats, friendStats.1, friendStats.friendPullUps) = (otherStats.0, otherStats.myPushUps, otherStats.2)

print((myStats))
print((friendStats))

var resultStats = ((friendStats.0-myStats.0), (friendStats.1-myStats.1), (friendStats.2-myStats.2))
print((resultStats))


