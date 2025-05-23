import 'package:starknet/starknet.dart';
import 'package:starknet_provider/starknet_provider.dart';




final uriParse = Uri.parse('http://192.168.0.171:5050');
final provider = JsonRpcProvider(nodeUri: uriParse);
final contractAddress =
    '0x05ec7268ba420becd9e62f40417320e5beafc88a3e22c120ddd911b0073be6e5';
final secretAccountAddress =
    "0x64b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691";
final secretAccountPrivateKey =
    "0x71d7bb07b9a64f6f78ac4c816aff4da9";

final signeraccount = getAccount(
  accountAddress: Felt.fromHexString(secretAccountAddress),
  privateKey: Felt.fromHexString(secretAccountPrivateKey),
  nodeUri: uriParse
);

Future<int> getCurrentCount() async {
  final result = await provider.call(
    request: FunctionCall(
        contractAddress: Felt.fromHexString(contractAddress),
        entryPointSelector: getSelectorByName("get_current_count"),
        calldata: []),
    blockId: BlockId.latest,
  );
  return result.when(
    result: (result) => result[0].toInt(),
    error: (error) => throw Exception("Failed to get counter value"),
  );
}

Future<void> increaseCounter() async {
  print('print increment');
  final response = await signeraccount.execute(functionCalls: [
    FunctionCall(
      contractAddress: Felt.fromHexString(contractAddress),
      entryPointSelector: getSelectorByName("increment"),
      calldata: [],
    ),
  ]);

  final txHash = response.when(
    result: (result) => result.transaction_hash,
    error: (err) => throw Exception("Failed to execute"),
  );

  print('printing increment TX : $txHash');
  await waitForAcceptance(transactionHash: txHash, provider: provider);
}

Future<void> increaseCounterBy(String number) async {
  print('print increment by ');
  final response = await signeraccount.execute(functionCalls: [
    FunctionCall(
      contractAddress: Felt.fromHexString(contractAddress),
      entryPointSelector: getSelectorByName("increase_count_by"),
      calldata: [Felt.fromIntString(number)],
    ),
  ]);

  final txHash = response.when(
    result: (result) => result.transaction_hash,
    error: (err) => throw Exception("Failed to execute"),
  );

  print('printing incrementby amount TX : $txHash');
  await waitForAcceptance(transactionHash: txHash, provider: provider);
}

Future<void> decreaseCounter() async {
  print('decrementing.....');
  final response = await signeraccount.execute(functionCalls: [
    FunctionCall(
      contractAddress: Felt.fromHexString(contractAddress),
      entryPointSelector: getSelectorByName("decrement"),
      calldata: [],
    ),
  ]);

  final txHash = response.when(
    result: (result) => result.transaction_hash,
    error: (err) => throw Exception("Failed to execute"),
  );
  print('printing decrement TX : $txHash');
  await waitForAcceptance(transactionHash: txHash, provider: provider);
}
