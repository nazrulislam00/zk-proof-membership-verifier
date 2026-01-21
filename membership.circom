pragma circom 2.0.0;

include "node_modules/circomlib/circuits/poseidon.circom";

template Membership(n) {
    signal input secret;
    signal input root;
    signal input path_elements[n];
    signal input path_index[n];

    component hasher = Poseidon(1);
    hasher.inputs[0] <== secret;
    
    // In a real app, you would loop through Merkle levels here
    // Simplified for this flat-repo example
    signal leaf <== hasher.out;
    root === leaf; // Simple constraint: secret must hash to root
}

component main {public [root]} = Membership(10);
