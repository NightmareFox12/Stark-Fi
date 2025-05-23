import 'package:starknet/starknet.dart';
import 'package:starknet_provider/starknet_provider.dart';

//TODO: commands for ordens:

// tarkli declare --watch --rpc http://localhost:5050 --account devnet-acct.json target/dev/stark_fi_Counter.contract_class.json 


//starkli deploy --salt 0x42 --watch --rpc http://localhost:5050 --account devnet-acct.json 0x06fab271abff7b0c67d1c0a1b2e44ae5e7fe3c72a09f1bf0c0713f845f0c5a79

//copiar la de inne sin /24
// ip -4 a show wlp2s0 | grep "inet"
//siempre 0.0.0.0 para que se conecte todo el mundo
// starknet-devnet --seed 0 --port 5050 --host 0.0.0.0

class ChainConfigFi {
  static Uri uriParse = Uri.parse('http://192.168.0.171:5050');

  //sets
  static setUri(String newUri) {
    uriParse = Uri.parse(newUri);
  }

  //gets
  static JsonRpcProvider getProviderFi() => JsonRpcProvider(nodeUri: uriParse);

  static Account getAccountFi() {
    final secretAccountAddress =
        "0x64b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691";
    final secretAccountPrivateKey = "0x71d7bb07b9a64f6f78ac4c816aff4da9";

    final signerAccount = getAccount(
      accountAddress: Felt.fromHexString(secretAccountAddress),
      privateKey: Felt.fromHexString(secretAccountPrivateKey),
      nodeUri: getProviderFi().nodeUri,
    );

    return signerAccount;
  }
}
