const snarkjs = require("snarkjs");
const fs = require("fs");

async function run() {
    const { proof, publicSignals } = await snarkjs.groth16.fullProve(
        { secret: 123, root: "..." }, 
        "membership.wasm", 
        "membership_final.zkey"
    );
    console.log("Proof generated successfully");
    fs.writeFileSync("proof.json", JSON.stringify(proof));
}
