/// THIS ALARM IS FOR WHEN THE GUY SHOULD STOP MOVING 
// LEFT TO RIGHT

//makes him stop slower and much cooler

for (var i = 4; i == 0; i -= 1) 
{
	self.phy_speed_x -= (self.phy_speed_x / 4)
}
self.phy_speed_x = 0