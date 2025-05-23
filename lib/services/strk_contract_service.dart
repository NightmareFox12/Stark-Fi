import 'package:stark_fi/services/chain_config_fi.dart';
import 'package:starknet/starknet.dart';
import 'package:starknet_provider/starknet_provider.dart';

final JsonRpcProvider provider = ChainConfigFi.getProviderFi();
final strkContractAddress =
    '0x4718F5A0FC34CC1AF16A1CDEE98FFB20C31F5CD61D6AB07201858F4287C938D';

//functions
getMyBalanceStrk() async {
  //0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691
  final result = await provider.call(
    request: FunctionCall(
      contractAddress: Felt.fromHexString(strkContractAddress),
      entryPointSelector: getSelectorByName("balance_of"),
      calldata: [
        Felt.fromHexString(
          "0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691",
        ),
      ],
    ),
    blockId: BlockId.latest,
  );
  return result.when(
    result: (result) => result[0].toBigInt() / BigInt.from(10).pow(18),
    error: (error) => throw Exception("Failed to get counter value"),
  );
}
