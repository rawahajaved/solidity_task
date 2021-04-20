var Exchange=artifacts.require("Exchange.sol");

contract ('Exchange',function() {
	var initial;
	it("check initial value",function(){
		return Exchange.deployed().then(function(instance){
			initial=instance;
			return initial.addOrder('buy',100);
		}).then(function(orders){
			assert.equal(orders[0].side,'buy','');
		})
	})
	
})
