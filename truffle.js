module.exports = {
  networks: {
    ganache: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" // matching any id
    }
  },
  compilers: {
    solc: {
      version: "0.4.24" // ex:  "0.4.20". (Default: Truffle's installed solc)
    }
 }
};
