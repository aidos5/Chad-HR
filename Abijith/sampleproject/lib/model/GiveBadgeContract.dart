import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:sampleproject/model/Badge.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';
import 'package:flutter/widgets.dart' show WidgetsFlutterBinding;
import 'Badge.dart';

class GiveBadgeContract extends ChangeNotifier {
  List<Badge>? badgesList = [];
  final String _rpcUrl =
      "https://ropsten.infura.io/v3/1f48dd8246df4a6e84642b0d71c59758";
  final String _wsUrl = "ws://127.0.0.1:7545/";

  final String _privateKey =
      "d87de68ddc182eb57b81c0636624b912009ed96a737110099b9a2b080b2b7429";

  Web3Client? _client;
  String? _abiCode;

  Credentials? credentials;
  EthereumAddress? _contractAddress;
  EthereumAddress? _ownAddress;
  DeployedContract? _contract;

  ContractFunction? getBadges;
  ContractFunction? badges;
  ContractFunction? giveBadge;
  String contractAddress = "0x39f7fb8c85dd808769Ac3445E4076617218A304b";

  // ContractFunction? _notesCount;
  // ContractFunction? _notes;
  // ContractFunction? _addNote;
  // ContractFunction? _deleteeNote;
  // ContractFunction? _editNote;
  // ContractEvent? _noteAddedEvent;
  // ContractEvent? _noteDeletedEvent;

  GiveBadgeContract() {
    WidgetsFlutterBinding.ensureInitialized();
    init();
  }

  init() async {
    _client = Web3Client(_rpcUrl, Client());
    await getAbi();
    await getCreadentials();
    await getDeployedContract();
  }

  Future<void> getAbi() async {
    _abiCode = await rootBundle.loadString('lib/ChadHR.abi.json');
    _contractAddress = EthereumAddress.fromHex(contractAddress);
  }

  Future<void> getCreadentials() async {
    credentials = await _client!.credentialsFromPrivateKey(_privateKey);
    _ownAddress = await credentials!.extractAddress();
  }

  Future<void> getDeployedContract() async {
    _contract = DeployedContract(ContractAbi.fromJson(_abiCode ?? "", "ChadHR"),
        _contractAddress ?? EthereumAddress.fromHex(contractAddress));

    getBadges = _contract!.function("GetBadges");
    giveBadge = _contract!.function("GiveBadge");
    badges = _contract!.function("badges");
    // _notesCount = _contract!.function("notesCount");
    // _notes = _contract!.function("notes");
    // _addNote = _contract!.function("addNote");
    // _deleteeNote = _contract!.function("deleteNote");
    // _editNote = _contract!.function("editNote");

    // _noteAddedEvent = _contract!.event("NoteAdded");
    // _noteDeletedEvent = _contract!.event("NoteDeleted");
    await GetBadges();
  }

  Future<List> GetBadges() async {
    List badgeList = await _client!
        .call(contract: _contract!, function: getBadges!, params: []);

    return badgeList;
  }

  GiveBadge(String badgeName, String userName) async {
    await _client!.call(
        contract: _contract!,
        function: giveBadge!,
        params: [badgeName, userName]);

    List badgeList = await _client!
        .call(contract: _contract!, function: getBadges!, params: []);

    print(badgeList);
  }

  // addNote(Note note) async {
  //   isLoading = true;
  //   notifyListeners();
  //   await _client.sendTransaction(
  //     _credentials,
  //     Transaction.callContract(
  //       contract: _contract,
  //       function: _addNote,
  //       parameters: [
  //         note.title,
  //         note.body,
  //         BigInt.from(note.created.millisecondsSinceEpoch),
  //       ],
  //     ),
  //   );
  //   await getNotes();
  // }

  // deleteNote(int id) async {
  //   isLoading = true;
  //   notifyListeners();
  //   await _client.sendTransaction(
  //     _credentials,
  //     Transaction.callContract(
  //       contract: _contract,
  //       function: _deleteeNote,
  //       parameters: [BigInt.from(id)],
  //     ),
  //   );
  //   await getNotes();
  // }

  // editNote(Note note) async {
  //   isLoading = true;
  //   notifyListeners();
  //   print(BigInt.from(int.parse(note.id)));
  //   await _client.sendTransaction(
  //     _credentials,
  //     Transaction.callContract(
  //       contract: _contract,
  //       function: _editNote,
  //       parameters: [BigInt.from(int.parse(note.id)), note.title, note.body],
  //     ),
  //   );
  //   await getNotes();
  // }
}
