const HelloWorld = artifacts.require("HelloWorld");

contract("HelloWorld", account =>  {
    it("costructor should set the message correctly", async () => {
        let instance = await HelloWorld.deployed();
        let message = await instance.message();
        assert.equal(message, "Hello World constructor");
    })

    it("owner should be account[0]", async () => {
        let instance = await HelloWorld.deployed();
        let owner = await instance.owner();
        assert.equal(owner, account[0]);
    })

    it("set should work properly", async () => {
        let instance = await HelloWorld.deployed();
        let string =  "Message has been set!";
        await instance.set(string);
        let message = await instance.message(); 
        assert.equal(message, string);
    })

})