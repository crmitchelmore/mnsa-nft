// @openzeppelin v4.0.0
pragma solidity ^0.8.4;

import "./lib/oz/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";

contract MNSA is ERC721PresetMinterPauserAutoId {

    constructor() public
	ERC721PresetMinterPauserAutoId("M&amp;S Archive Token", "MNSA", "http://mnsa-api.northeurope.azurecontainer.io")
	{}

}