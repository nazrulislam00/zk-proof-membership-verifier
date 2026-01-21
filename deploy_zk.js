async function main() {
    const Verifier = await ethers.getContractFactory("Verifier");
    const v = await Verifier.deploy();
    const Manager = await ethers.getContractFactory("ZkManager");
    const m = await Manager.deploy(v.address);
    console.log("ZK System Deployed");
}
