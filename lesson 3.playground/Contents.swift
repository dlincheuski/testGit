
var myStats = (mySquats:100, myPushUps:20, myPullUps:7)
var friendStats = (friendSquats:110, friendPushUps:25, friendPullUps:11)

print((myStats.mySquats, myStats.myPushUps,myStats.myPullUps))

print("My personal stats: \n My squats  \(myStats.mySquats) \n My push ups \(myStats.1) \n My pull ups \(myStats.myPullUps)")

var otherStats = myStats

myStats.0 = friendStats.0
myStats.1 = friendStats.1
myStats.2 = friendStats.2

friendStats.0 = otherStats.0
friendStats.1 = otherStats.1
friendStats.2 = otherStats.2

print((myStats))
print((friendStats))

var resultStats = ((friendStats.0-myStats.0), (friendStats.1-myStats.1), (friendStats.2-myStats.2))
print((resultStats))


