// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.4.9 <0.9.0;

library HederaResponseCodes {
    // response codes
    int32 internal constant OK = 0; // The transaction passed the precheck validations.
    int32 internal constant INVALID_TRANSACTION = 1; // For any error not handled by specific error codes listed below.
    int32 internal constant PAYER_ACCOUNT_NOT_FOUND = 2; //Payer account does not exist.
    int32 internal constant INVALID_NODE_ACCOUNT = 3; //Node Account provided does not match the node account of the node the transaction was submitted to.
    int32 internal constant TRANSACTION_EXPIRED = 4; // Pre-Check error when TransactionValidStart + transactionValidDuration is less than current consensus time.
    int32 internal constant INVALID_TRANSACTION_START = 5; // Transaction start time is greater than current consensus time
    int32 internal constant INVALID_TRANSACTION_DURATION = 6; //valid transaction duration is a positive non zero number that does not exceed 120 seconds
    int32 internal constant INVALID_SIGNATURE = 7; // The transaction signature is not valid
    int32 internal constant MEMO_TOO_LONG = 8; //Transaction memo size exceeded 100 bytes
    int32 internal constant INSUFFICIENT_TX_FEE = 9; // The fee provided in the transaction is insufficient for this type of transaction
    int32 internal constant INSUFFICIENT_PAYER_BALANCE = 10; // The payer account has insufficient cryptocurrency to pay the transaction fee
    int32 internal constant DUPLICATE_TRANSACTION = 11; // This transaction ID is a duplicate of one that was submitted to this node or reached consensus in the last 180 seconds (receipt period)
    int32 internal constant BUSY = 12; //If API is throttled out
    int32 internal constant NOT_SUPPORTED = 13; //The API is not currently supported

    int32 internal constant INVALID_FILE_ID = 14; //The file id is invalid or does not exist
    int32 internal constant INVALID_ACCOUNT_ID = 15; //The account id is invalid or does not exist
    int32 internal constant INVALID_CONTRACT_ID = 16; //The contract id is invalid or does not exist
    int32 internal constant INVALID_TRANSACTION_ID = 17; //Transaction id is not valid
    int32 internal constant RECEIPT_NOT_FOUND = 18; //Receipt for given transaction id does not exist
    int32 internal constant RECORD_NOT_FOUND = 19; //Record for given transaction id does not exist
    int32 internal constant INVALID_SOLIDITY_ID = 20; //The solidity id is invalid or entity with this solidity id does not exist

    int32 internal constant UNKNOWN = 21; // The responding node has submitted the transaction to the network. Its final status is still unknown.
    int32 internal constant SUCCESS = 22; // The transaction succeeded
    int32 internal constant FAIL_INVALID = 23; // There was a system error and the transaction failed because of invalid request parameters.
    int32 internal constant FAIL_FEE = 24; // There was a system error while performing fee calculation, reserved for future.
    int32 internal constant FAIL_BALANCE = 25; // There was a system error while performing balance checks, reserved for future.

    int32 internal constant KEY_REQUIRED = 26; //Key not provided in the transaction body
    int32 internal constant BAD_ENCODING = 27; //Unsupported algorithm/encoding used for keys in the transaction
    int32 internal constant INSUFFICIENT_ACCOUNT_BALANCE = 28; //When the account balance is not sufficient for the transfer
    int32 internal constant INVALID_SOLIDITY_ADDRESS = 29; //During an update transaction when the system is not able to find the Users Solidity address

    int32 internal constant INSUFFICIENT_GAS = 30; //Not enough gas was supplied to execute transaction
    int32 internal constant CONTRACT_SIZE_LIMIT_EXCEEDED = 31; //contract byte code size is over the limit
    int32 internal constant LOCAL_CALL_MODIFICATION_EXCEPTION = 32; //local execution (query) is requested for a function which changes state
    int32 internal constant CONTRACT_REVERT_EXECUTED = 33; //Contract REVERT OPCODE executed
    int32 internal constant CONTRACT_EXECUTION_EXCEPTION = 34; //For any contract execution related error not handled by specific error codes listed above.
    int32 internal constant INVALID_RECEIVING_NODE_ACCOUNT = 35; //In Query validation, account with +ve(amount) value should be Receiving node account, the receiver account should be only one account in the list
    int32 internal constant MISSING_QUERY_HEADER = 36; // Header is missing in Query request

    int32 internal constant ACCOUNT_UPDATE_FAILED = 37; // The update of the account failed
    int32 internal constant INVALID_KEY_ENCODING = 38; // Provided key encoding was not supported by the system
    int32 internal constant NULL_SOLIDITY_ADDRESS = 39; // null solidity address

    int32 internal constant CONTRACT_UPDATE_FAILED = 40; // update of the contract failed
    int32 internal constant INVALID_QUERY_HEADER = 41; // the query header is invalid

    int32 internal constant INVALID_FEE_SUBMITTED = 42; // Invalid fee submitted
    int32 internal constant INVALID_PAYER_SIGNATURE = 43; // Payer signature is invalid

    int32 internal constant KEY_NOT_PROVIDED = 44; // The keys were not provided in the request.
    int32 internal constant INVALID_EXPIRATION_TIME = 45; // Expiration time provided in the transaction was invalid.
    int32 internal constant NO_WACL_KEY = 46; //WriteAccess Control Keys are not provided for the file
    int32 internal constant FILE_CONTENT_EMPTY = 47; //The contents of file are provided as empty.
    int32 internal constant INVALID_ACCOUNT_AMOUNTS = 48; // The crypto transfer credit and debit do not sum equal to 0
    int32 internal constant EMPTY_TRANSACTION_BODY = 49; // Transaction body provided is empty
    int32 internal constant INVALID_TRANSACTION_BODY = 50; // Invalid transaction body provided

    int32 internal constant INVALID_SIGNATURE_TYPE_MISMATCHING_KEY = 51; // the type of key (base ed25519 key, KeyList, or ThresholdKey) does not match the type of signature (base ed25519 signature, SignatureList, or ThresholdKeySignature)
    int32 internal constant INVALID_SIGNATURE_COUNT_MISMATCHING_KEY = 52; // the number of key (KeyList, or ThresholdKey) does not match that of signature (SignatureList, or ThresholdKeySignature). e.g. if a keyList has 3 base keys, then the corresponding signatureList should also have 3 base signatures.

    int32 internal constant EMPTY_LIVE_HASH_BODY = 53; // the livehash body is empty
    int32 internal constant EMPTY_LIVE_HASH = 54; // the livehash data is missing
    int32 internal constant EMPTY_LIVE_HASH_KEYS = 55; // the keys for a livehash are missing
    int32 internal constant INVALID_LIVE_HASH_SIZE = 56; // the livehash data is not the output of a SHA-384 digest

    int32 internal constant EMPTY_QUERY_BODY = 57; // the query body is empty
    int32 internal constant EMPTY_LIVE_HASH_QUERY = 58; // the crypto livehash query is empty
    int32 internal constant LIVE_HASH_NOT_FOUND = 59; // the livehash is not present
    int32 internal constant ACCOUNT_ID_DOES_NOT_EXIST = 60; // the account id passed has not yet been created.
    int32 internal constant LIVE_HASH_ALREADY_EXISTS = 61; // the livehash already exists for a given account

    int32 internal constant INVALID_FILE_WACL = 62; // File WACL keys are invalid
    int32 internal constant SERIALIZATION_FAILED = 63; // Serialization failure
    int32 internal constant TRANSACTION_OVERSIZE = 64; // The size of the Transaction is greater than transactionMaxBytes
    int32 internal constant TRANSACTION_TOO_MANY_LAYERS = 65; // The Transaction has more than 50 levels
    int32 internal constant CONTRACT_DELETED = 66; //Contract is marked as deleted

    int32 internal constant PLATFORM_NOT_ACTIVE = 67; // the platform node is either disconnected or lagging behind.
    int32 internal constant KEY_PREFIX_MISMATCH = 68; // one internal key matches more than one prefixes on the signature map
    int32 internal constant PLATFORM_TRANSACTION_NOT_CREATED = 69; // transaction not created by platform due to large backlog
    int32 internal constant INVALID_RENEWAL_PERIOD = 70; // auto renewal period is not a positive number of seconds
    int32 internal constant INVALID_PAYER_ACCOUNT_ID = 71; // the response code when a smart contract id is passed for a crypto API request
    int32 internal constant ACCOUNT_DELETED = 72; // the account has been marked as deleted
    int32 internal constant FILE_DELETED = 73; // the file has been marked as deleted
    int32 internal constant ACCOUNT_REPEATED_IN_ACCOUNT_AMOUNTS = 74; // same accounts repeated in the transfer account list
    int32 internal constant SETTING_NEGATIVE_ACCOUNT_BALANCE = 75; // attempting to set negative balance value for crypto account
    int32 internal constant OBTAINER_REQUIRED = 76; // when deleting smart contract that has crypto balance either transfer account or transfer smart contract is required
    int32 internal constant OBTAINER_SAME_CONTRACT_ID = 77; //when deleting smart contract that has crypto balance you can not use the same contract id as transferContractId as the one being deleted
    int32 internal constant OBTAINER_DOES_NOT_EXIST = 78; //transferAccountId or transferContractId specified for contract delete does not exist
    int32 internal constant MODIFYING_IMMUTABLE_CONTRACT = 79; //attempting to modify (update or delete a immutable smart contract, i.e. one created without a admin key)
    int32 internal constant FILE_SYSTEM_EXCEPTION = 80; //Unexpected exception thrown by file system functions
    int32 internal constant AUTORENEW_DURATION_NOT_IN_RANGE = 81; // the duration is not a subset of [MINIMUM_AUTORENEW_DURATION,MAXIMUM_AUTORENEW_DURATION]
    int32 internal constant ERROR_DECODING_BYTESTRING = 82; // Decoding the smart contract binary to a byte array failed. Check that the input is a valid hex string.
    int32 internal constant CONTRACT_FILE_EMPTY = 83; // File to create a smart contract was of length zero
    int32 internal constant CONTRACT_BYTECODE_EMPTY = 84; // Bytecode for smart contract is of length zero
    int32 internal constant INVALID_INITIAL_BALANCE = 85; // Attempt to set negative initial balance
    int32 internal constant INVALID_RECEIVE_RECORD_THRESHOLD = 86; // [Deprecated]. attempt to set negative receive record threshold
    int32 internal constant INVALID_SEND_RECORD_THRESHOLD = 87; // [Deprecated]. attempt to set negative send record threshold
    int32 internal constant ACCOUNT_IS_NOT_GENESIS_ACCOUNT = 88; // Special Account Operations should be performed by only Genesis account, return this code if it is not Genesis Account
    int32 internal constant PAYER_ACCOUNT_UNAUTHORIZED = 89; // The fee payer account doesn't have permission to submit such Transaction
    int32 internal constant INVALID_FREEZE_TRANSACTION_BODY = 90; // FreezeTransactionBody is invalid
    int32 internal constant FREEZE_TRANSACTION_BODY_NOT_FOUND = 91; // FreezeTransactionBody does not exist
    int32 internal constant TRANSFER_LIST_SIZE_LIMIT_EXCEEDED = 92; //Exceeded the number of accounts (both from and to) allowed for crypto transfer list
    int32 internal constant RESULT_SIZE_LIMIT_EXCEEDED = 93; // Smart contract result size greater than specified maxResultSize
    int32 internal constant NOT_SPECIAL_ACCOUNT = 94; //The payer account is not a special account(account 0.0.55)
    int32 internal constant CONTRACT_NEGATIVE_GAS = 95; // Negative gas was offered in smart contract call
    int32 internal constant CONTRACT_NEGATIVE_VALUE = 96; // Negative value / initial balance was specified in a smart contract call / create
    int32 internal constant INVALID_FEE_FILE = 97; // Failed to update fee file
    int32 internal constant INVALID_EXCHANGE_RATE_FILE = 98; // Failed to update exchange rate file
    int32 internal constant INSUFFICIENT_LOCAL_CALL_GAS = 99; // Payment tendered for contract local call cannot cover both the fee and the gas
    int32 internal constant ENTITY_NOT_ALLOWED_TO_DELETE = 100; // Entities with Entity ID below 1000 are not allowed to be deleted
    int32 internal constant AUTHORIZATION_FAILED = 101; // Violating one of these rules: 1) treasury account can update all entities below 0.0.1000, 2) account 0.0.50 can update all entities from 0.0.51 - 0.0.80, 3) Network Function Master Account A/c 0.0.50 - Update all Network Function accounts & perform all the Network Functions listed below, 4) Network Function Accounts: i) A/c 0.0.55 - Update Address Book files (0.0.101/102), ii) A/c 0.0.56 - Update Fee schedule (0.0.111), iii) A/c 0.0.57 - Update Exchange Rate (0.0.112).
    int32 internal constant FILE_UPLOADED_PROTO_INVALID = 102; // Fee Schedule Proto uploaded but not valid (append or update is required)
    int32 internal constant FILE_UPLOADED_PROTO_NOT_SAVED_TO_DISK = 103; // Fee Schedule Proto uploaded but not valid (append or update is required)
    int32 internal constant FEE_SCHEDULE_FILE_PART_UPLOADED = 104; // Fee Schedule Proto File Part uploaded
    int32 internal constant EXCHANGE_RATE_CHANGE_LIMIT_EXCEEDED = 105; // The change on Exchange Rate exceeds Exchange_Rate_Allowed_Percentage
    int32 internal constant MAX_CONTRACT_STORAGE_EXCEEDED = 106; // Contract permanent storage exceeded the currently allowable limit
    int32 internal constant TRANSFER_ACCOUNT_SAME_AS_DELETE_ACCOUNT = 107; // Transfer Account should not be same as Account to be deleted
    int32 internal constant TOTAL_LEDGER_BALANCE_INVALID = 108;
    int32 internal constant EXPIRATION_REDUCTION_NOT_ALLOWED = 110; // The expiration date/time on a smart contract may not be reduced
    int32 internal constant MAX_GAS_LIMIT_EXCEEDED = 111; //Gas exceeded currently allowable gas limit per transaction
    int32 internal constant MAX_FILE_SIZE_EXCEEDED = 112; // File size exceeded the currently allowable limit

    int32 internal constant INVALID_TOPIC_ID = 150; // The Topic ID specified is not in the system.
    int32 internal constant INVALID_ADMIN_KEY = 155; // A provided admin key was invalid.
    int32 internal constant INVALID_SUBMIT_KEY = 156; // A provided submit key was invalid.
    int32 internal constant UNAUTHORIZED = 157; // An attempted operation was not authorized (ie - a deleteTopic for a topic with no adminKey).
    int32 internal constant INVALID_TOPIC_MESSAGE = 158; // A ConsensusService message is empty.
    int32 internal constant INVALID_AUTORENEW_ACCOUNT = 159; // The autoRenewAccount specified is not a valid, active account.
    int32 internal constant AUTORENEW_ACCOUNT_NOT_ALLOWED = 160; // An adminKey was not specified on the topic, so there must not be an autoRenewAccount.
    // The topic has expired, was not automatically renewed, and is in a 7 day grace period before the topic will be
    // deleted unrecoverably. This error response code will not be returned until autoRenew functionality is supported
    // by HAPI.
    int32 internal constant TOPIC_EXPIRED = 162;
    int32 internal constant INVALID_CHUNK_NUMBER = 163; // chunk number must be from 1 to total (chunks) inclusive.
    int32 internal constant INVALID_CHUNK_TRANSACTION_ID = 164; // For every chunk, the payer account that is part of initialTransactionID must match the Payer Account of this transaction. The entire initialTransactionID should match the transactionID of the first chunk, but this is not checked or enforced by Hedera except when the chunk number is 1.
    int32 internal constant ACCOUNT_FROZEN_FOR_TOKEN = 165; // Account is frozen and cannot transact with the token
    int32 internal constant TOKENS_PER_ACCOUNT_LIMIT_EXCEEDED = 166; // An involved account already has more than <tt>tokens.maxPerAccount</tt> associations with non-deleted tokens.
    int32 internal constant INVALID_TOKEN_ID = 167; // The token is invalid or does not exist
    int32 internal constant INVALID_TOKEN_DECIMALS = 168; // Invalid token decimals
    int32 internal constant INVALID_TOKEN_INITIAL_SUPPLY = 169; // Invalid token initial supply
    int32 internal constant INVALID_TREASURY_ACCOUNT_FOR_TOKEN = 170; // Treasury Account does not exist or is deleted
    int32 internal constant INVALID_TOKEN_SYMBOL = 171; // Token Symbol is not UTF-8 capitalized alphabetical string
    int32 internal constant TOKEN_HAS_NO_FREEZE_KEY = 172; // Freeze key is not set on token
    int32 internal constant TRANSFERS_NOT_ZERO_SUM_FOR_TOKEN = 173; // Amounts in transfer list are not net zero
    int32 internal constant MISSING_TOKEN_SYMBOL = 174; // A token symbol was not provided
    int32 internal constant TOKEN_SYMBOL_TOO_LONG = 175; // The provided token symbol was too long
    int32 internal constant ACCOUNT_KYC_NOT_GRANTED_FOR_TOKEN = 176; // KYC must be granted and account does not have KYC granted
    int32 internal constant TOKEN_HAS_NO_KYC_KEY = 177; // KYC key is not set on token
    int32 internal constant INSUFFICIENT_TOKEN_BALANCE = 178; // Token balance is not sufficient for the transaction
    int32 internal constant TOKEN_WAS_DELETED = 179; // Token transactions cannot be executed on deleted token
    int32 internal constant TOKEN_HAS_NO_SUPPLY_KEY = 180; // Supply key is not set on token
    int32 internal constant TOKEN_HAS_NO_WIPE_KEY = 181; // Wipe key is not set on token
    int32 internal constant INVALID_TOKEN_MINT_AMOUNT = 182; // The requested token mint amount would cause an invalid total supply
    int32 internal constant INVALID_TOKEN_BURN_AMOUNT = 183; // The requested token burn amount would cause an invalid total supply
    int32 internal constant TOKEN_NOT_ASSOCIATED_TO_ACCOUNT = 184; // A required token-account relationship is missing
    int32 internal constant CANNOT_WIPE_TOKEN_TREASURY_ACCOUNT = 185; // The target of a wipe operation was the token treasury account
    int32 internal constant INVALID_KYC_KEY = 186; // The provided KYC key was invalid.
    int32 internal constant INVALID_WIPE_KEY = 187; // The provided wipe key was invalid.
    int32 internal constant INVALID_FREEZE_KEY = 188; // The provided freeze key was invalid.
    int32 internal constant INVALID_SUPPLY_KEY = 189; // The provided supply key was invalid.
    int32 internal constant MISSING_TOKEN_NAME = 190; // Token Name is not provided
    int32 internal constant TOKEN_NAME_TOO_LONG = 191; // Token Name is too long
    int32 internal constant INVALID_WIPING_AMOUNT = 192; // The provided wipe amount must not be negative, zero or bigger than the token holder balance
    int32 internal constant TOKEN_IS_IMMUTABLE = 193; // Token does not have Admin key set, thus update/delete transactions cannot be performed
    int32 internal constant TOKEN_ALREADY_ASSOCIATED_TO_ACCOUNT = 194; // An <tt>associateToken</tt> operation specified a token already associated to the account
    int32 internal constant TRANSACTION_REQUIRES_ZERO_TOKEN_BALANCES = 195; // An attempted operation is invalid until all token balances for the target account are zero
    int32 internal constant ACCOUNT_IS_TREASURY = 196; // An attempted operation is invalid because the account is a treasury
    int32 internal constant TOKEN_ID_REPEATED_IN_TOKEN_LIST = 197; // Same TokenIDs present in the token list
    int32 internal constant TOKEN_TRANSFER_LIST_SIZE_LIMIT_EXCEEDED = 198; // Exceeded the number of token transfers (both from and to) allowed for token transfer list
    int32 internal constant EMPTY_TOKEN_TRANSFER_BODY = 199; // TokenTransfersTransactionBody has no TokenTransferList
    int32 internal constant EMPTY_TOKEN_TRANSFER_ACCOUNT_AMOUNTS = 200; // TokenTransfersTransactionBody has a TokenTransferList with no AccountAmounts
    int32 internal constant INVALID_SCHEDULE_ID = 201; // The Scheduled entity does not exist; or has now expired, been deleted, or been executed
    int32 internal constant SCHEDULE_IS_IMMUTABLE = 202; // The Scheduled entity cannot be modified. Admin key not set
    int32 internal constant INVALID_SCHEDULE_PAYER_ID = 203; // The provided Scheduled Payer does not exist
    int32 internal constant INVALID_SCHEDULE_ACCOUNT_ID = 204; // The Schedule Create Transaction TransactionID account does not exist
    int32 internal constant NO_NEW_VALID_SIGNATURES = 205; // The provided sig map did not contain any new valid signatures from required signers of the scheduled transaction
    int32 internal constant UNRESOLVABLE_REQUIRED_SIGNERS = 206; // The required signers for a scheduled transaction cannot be resolved, for example because they do not exist or have been deleted
    int32 internal constant SCHEDULED_TRANSACTION_NOT_IN_WHITELIST = 207; // Only whitelisted transaction types may be scheduled
    int32 internal constant SOME_SIGNATURES_WERE_INVALID = 208; // At least one of the signatures in the provided sig map did not represent a valid signature for any required signer
    int32 internal constant TRANSACTION_ID_FIELD_NOT_ALLOWED = 209; // The scheduled field in the TransactionID may not be set to true
    int32 internal constant IDENTICAL_SCHEDULE_ALREADY_CREATED = 210; // A schedule already exists with the same identifying fields of an attempted ScheduleCreate (that is, all fields other than scheduledPayerAccountID)
    int32 internal constant INVALID_ZERO_BYTE_IN_STRING = 211; // A string field in the transaction has a UTF-8 encoding with the prohibited zero byte
    int32 internal constant SCHEDULE_ALREADY_DELETED = 212; // A schedule being signed or deleted has already been deleted
    int32 internal constant SCHEDULE_ALREADY_EXECUTED = 213; // A schedule being signed or deleted has already been executed
    int32 internal constant MESSAGE_SIZE_TOO_LARGE = 214; // ConsensusSubmitMessage request's message size is larger than allowed.
    int32 internal constant OPERATION_REPEATED_IN_BUCKET_GROUPS = 215; // An operation was assigned to more than one throttle group in a given bucket
    int32 internal constant BUCKET_CAPACITY_OVERFLOW = 216; // The capacity needed to satisfy all opsPerSec groups in a bucket overflowed a signed 8-byte integral type
    int32 internal constant NODE_CAPACITY_NOT_SUFFICIENT_FOR_OPERATION = 217; // Given the network size in the address book, the node-level capacity for an operation would never be enough to accept a single request; usually means a bucket burstPeriod should be increased
    int32 internal constant BUCKET_HAS_NO_THROTTLE_GROUPS = 218; // A bucket was defined without any throttle groups
    int32 internal constant THROTTLE_GROUP_HAS_ZERO_OPS_PER_SEC = 219; // A throttle group was granted zero opsPerSec
    int32 internal constant SUCCESS_BUT_MISSING_EXPECTED_OPERATION = 220; // The throttle definitions file was updated, but some supported operations were not assigned a bucket
    int32 internal constant UNPARSEABLE_THROTTLE_DEFINITIONS = 221; // The new contents for the throttle definitions system file were not valid protobuf
    int32 internal constant INVALID_THROTTLE_DEFINITIONS = 222; // The new throttle definitions system file were invalid, and no more specific error could be divined
    int32 internal constant ACCOUNT_EXPIRED_AND_PENDING_REMOVAL = 223; // The transaction references an account which has passed its expiration without renewal funds available, and currently remains in the ledger only because of the grace period given to expired entities
    int32 internal constant INVALID_TOKEN_MAX_SUPPLY = 224; // Invalid token max supply
    int32 internal constant INVALID_TOKEN_NFT_SERIAL_NUMBER = 225; // Invalid token nft serial number
    int32 internal constant INVALID_NFT_ID = 226; // Invalid nft id
    int32 internal constant METADATA_TOO_LONG = 227; // NFT metadata is too long
    int32 internal constant BATCH_SIZE_LIMIT_EXCEEDED = 228; // Repeated operations count exceeds the limit
    int32 internal constant INVALID_QUERY_RANGE = 229; // The range of data to be gathered is out of the set boundaries
    int32 internal constant FRACTION_DIVIDES_BY_ZERO = 230; // A custom fractional fee set a denominator of zero
    int32 internal constant INSUFFICIENT_PAYER_BALANCE_FOR_CUSTOM_FEE = 231; // The transaction payer could not afford a custom fee
    int32 internal constant CUSTOM_FEES_LIST_TOO_LONG = 232; // More than 10 custom fees were specified
    int32 internal constant INVALID_CUSTOM_FEE_COLLECTOR = 233; // Any of the feeCollector accounts for customFees is invalid
    int32 internal constant INVALID_TOKEN_ID_IN_CUSTOM_FEES = 234; // Any of the token Ids in customFees is invalid
    int32 internal constant TOKEN_NOT_ASSOCIATED_TO_FEE_COLLECTOR = 235; // Any of the token Ids in customFees are not associated to feeCollector
    int32 internal constant TOKEN_MAX_SUPPLY_REACHED = 236; // A token cannot have more units minted due to its configured supply ceiling
    int32 internal constant SENDER_DOES_NOT_OWN_NFT_SERIAL_NO = 237; // The transaction attempted to move an NFT serial number from an account other than its owner
    int32 internal constant CUSTOM_FEE_NOT_FULLY_SPECIFIED = 238; // A custom fee schedule entry did not specify either a fixed or fractional fee
    int32 internal constant CUSTOM_FEE_MUST_BE_POSITIVE = 239; // Only positive fees may be assessed at this time
    int32 internal constant TOKEN_HAS_NO_FEE_SCHEDULE_KEY = 240; // Fee schedule key is not set on token
    int32 internal constant CUSTOM_FEE_OUTSIDE_NUMERIC_RANGE = 241; // A fractional custom fee exceeded the range of a 64-bit signed integer
    int32 internal constant ROYALTY_FRACTION_CANNOT_EXCEED_ONE = 242; // A royalty cannot exceed the total fungible value exchanged for an NFT
    int32 internal constant FRACTIONAL_FEE_MAX_AMOUNT_LESS_THAN_MIN_AMOUNT =
        243; // Each fractional custom fee must have its maximum_amount, if specified, at least its minimum_amount
    int32 internal constant CUSTOM_SCHEDULE_ALREADY_HAS_NO_FEES = 244; // A fee schedule update tried to clear the custom fees from a token whose fee schedule was already empty
    int32 internal constant CUSTOM_FEE_DENOMINATION_MUST_BE_FUNGIBLE_COMMON =
        245; // Only tokens of type FUNGIBLE_COMMON can be used to as fee schedule denominations
    int32
        internal constant CUSTOM_FRACTIONAL_FEE_ONLY_ALLOWED_FOR_FUNGIBLE_COMMON =
        246; // Only tokens of type FUNGIBLE_COMMON can have fractional fees
    int32 internal constant INVALID_CUSTOM_FEE_SCHEDULE_KEY = 247; // The provided custom fee schedule key was invalid
    int32 internal constant INVALID_TOKEN_MINT_METADATA = 248; // The requested token mint metadata was invalid
    int32 internal constant INVALID_TOKEN_BURN_METADATA = 249; // The requested token burn metadata was invalid
    int32 internal constant CURRENT_TREASURY_STILL_OWNS_NFTS = 250; // The treasury for a unique token cannot be changed until it owns no NFTs
    int32 internal constant ACCOUNT_STILL_OWNS_NFTS = 251; // An account cannot be dissociated from a unique token if it owns NFTs for the token
    int32 internal constant TREASURY_MUST_OWN_BURNED_NFT = 252; // A NFT can only be burned when owned by the unique token's treasury
    int32 internal constant ACCOUNT_DOES_NOT_OWN_WIPED_NFT = 253; // An account did not own the NFT to be wiped
    int32
        internal constant ACCOUNT_AMOUNT_TRANSFERS_ONLY_ALLOWED_FOR_FUNGIBLE_COMMON =
        254; // An AccountAmount token transfers list referenced a token type other than FUNGIBLE_COMMON
    int32 internal constant MAX_NFTS_IN_PRICE_REGIME_HAVE_BEEN_MINTED = 255; // All the NFTs allowed in the current price regime have already been minted
    int32 internal constant PAYER_ACCOUNT_DELETED = 256; // The payer account has been marked as deleted
    int32 internal constant CUSTOM_FEE_CHARGING_EXCEEDED_MAX_RECURSION_DEPTH =
        257; // The reference chain of custom fees for a transferred token exceeded the maximum length of 2
    int32 internal constant CUSTOM_FEE_CHARGING_EXCEEDED_MAX_ACCOUNT_AMOUNTS =
        258; // More than 20 balance adjustments were to satisfy a CryptoTransfer and its implied custom fee payments
    int32 internal constant INSUFFICIENT_SENDER_ACCOUNT_BALANCE_FOR_CUSTOM_FEE =
        259; // The sender account in the token transfer transaction could not afford a custom fee
    int32 internal constant SERIAL_NUMBER_LIMIT_REACHED = 260; // Currently no more than 4,294,967,295 NFTs may be minted for a given unique token type
    int32
        internal constant CUSTOM_ROYALTY_FEE_ONLY_ALLOWED_FOR_NON_FUNGIBLE_UNIQUE =
        261; // Only tokens of type NON_FUNGIBLE_UNIQUE can have royalty fees
    int32 internal constant NO_REMAINING_AUTOMATIC_ASSOCIATIONS = 262; // The account has reached the limit on the automatic associations count.
    int32 internal constant EXISTING_AUTOMATIC_ASSOCIATIONS_EXCEED_GIVEN_LIMIT =
        263; // Already existing automatic associations are more than the new maximum automatic associations.
    int32
        internal constant REQUESTED_NUM_AUTOMATIC_ASSOCIATIONS_EXCEEDS_ASSOCIATION_LIMIT =
        264; // Cannot set the number of automatic associations for an account more than the maximum allowed tokens.maxPerAccount.
    int32 internal constant TOKEN_IS_PAUSED = 265; // Token is paused. This Token cannot be a part of any kind of Transaction until unpaused.
    int32 internal constant TOKEN_HAS_NO_PAUSE_KEY = 266; // Pause key is not set on token
    int32 internal constant INVALID_PAUSE_KEY = 267; // The provided pause key was invalid
    int32 internal constant FREEZE_UPDATE_FILE_DOES_NOT_EXIST = 268; // The update file in a freeze transaction body must exist.
    int32 internal constant FREEZE_UPDATE_FILE_HASH_DOES_NOT_MATCH = 269; // The hash of the update file in a freeze transaction body must match the in-memory hash.
    int32 internal constant NO_UPGRADE_HAS_BEEN_PREPARED = 270; // A FREEZE_UPGRADE transaction was handled with no previous update prepared.
    int32 internal constant NO_FREEZE_IS_SCHEDULED = 271; // A FREEZE_ABORT transaction was handled with no scheduled freeze.
    int32 internal constant UPDATE_FILE_HASH_CHANGED_SINCE_PREPARE_UPGRADE =
        272; // The update file hash when handling a FREEZE_UPGRADE transaction differs from the file hash at the time of handling the PREPARE_UPGRADE transaction.
    int32 internal constant FREEZE_START_TIME_MUST_BE_FUTURE = 273; // The given freeze start time was in the (consensus) past.
    int32 internal constant PREPARED_UPDATE_FILE_IS_IMMUTABLE = 274; // The prepared update file cannot be updated or appended until either the upgrade has been completed, or a FREEZE_ABORT has been handled.
    int32 internal constant FREEZE_ALREADY_SCHEDULED = 275; // Once a freeze is scheduled, it must be aborted before any other type of freeze can be performed.
    int32 internal constant FREEZE_UPGRADE_IN_PROGRESS = 276; // If an NMT upgrade has been prepared, the following operation must be a FREEZE_UPGRADE (To issue a FREEZE_ONLY, submit a FREEZE_ABORT first.)
    int32 internal constant UPDATE_FILE_ID_DOES_NOT_MATCH_PREPARED = 277; // If an NMT upgrade has been prepared, the subsequent FREEZE_UPGRADE transaction must confirm the id of the file to be used in the upgrade.
    int32 internal constant UPDATE_FILE_HASH_DOES_NOT_MATCH_PREPARED = 278; // If an NMT upgrade has been prepared, the subsequent FREEZE_UPGRADE transaction must confirm the hash of the file to be used in the upgrade.
    int32 internal constant CONSENSUS_GAS_EXHAUSTED = 279; // Consensus throttle did not allow execution of this transaction. System is throttled at consensus level.
    int32 internal constant REVERTED_SUCCESS = 280; // A precompiled contract succeeded, but was later reverted.
    int32 internal constant MAX_STORAGE_IN_PRICE_REGIME_HAS_BEEN_USED = 281; // All contract storage allocated to the current price regime has been consumed.
    int32 internal constant INVALID_ALIAS_KEY = 282; // An alias used in a CryptoTransfer transaction is not the serialization of a primitive Key message -- that is, a Key with a single Ed25519 or ECDSA(secp256k1) public key and no unknown protobuf fields.
    int32 internal constant UNEXPECTED_TOKEN_DECIMALS = 283; // A fungible token transfer expected a different number of decimals than the involved type actually has.
    int32 internal constant INVALID_PROXY_ACCOUNT_ID = 284; // [Deprecated] The proxy account id is invalid or does not exist.
    int32 internal constant INVALID_TRANSFER_ACCOUNT_ID = 285; // The transfer account id in CryptoDelete transaction is invalid or does not exist.
    int32 internal constant INVALID_FEE_COLLECTOR_ACCOUNT_ID = 286; // The fee collector account id in TokenFeeScheduleUpdate is invalid or does not exist.
    int32 internal constant ALIAS_IS_IMMUTABLE = 287; // The alias already set on an account cannot be updated using CryptoUpdate transaction.
    int32 internal constant SPENDER_ACCOUNT_SAME_AS_OWNER = 288; // An approved allowance specifies a spender account that is the same as the hbar/token owner account.
    int32 internal constant AMOUNT_EXCEEDS_TOKEN_MAX_SUPPLY = 289; // The establishment or adjustment of an approved allowance cause the token allowance to exceed the token maximum supply.
    int32 internal constant NEGATIVE_ALLOWANCE_AMOUNT = 290; // The specified amount for an approved allowance cannot be negative.
    int32 internal constant CANNOT_APPROVE_FOR_ALL_FUNGIBLE_COMMON = 291; // [Deprecated] The approveForAll flag cannot be set for a fungible token.
    int32 internal constant SPENDER_DOES_NOT_HAVE_ALLOWANCE = 292; // The spender does not have an existing approved allowance with the hbar/token owner.
    int32 internal constant AMOUNT_EXCEEDS_ALLOWANCE = 293; // The transfer amount exceeds the current approved allowance for the spender account.
    int32 internal constant MAX_ALLOWANCES_EXCEEDED = 294; // The payer account of an approveAllowances or adjustAllowance transaction is attempting to go beyond the maximum allowed number of allowances.
    int32 internal constant EMPTY_ALLOWANCES = 295; // No allowances have been specified in the approval transaction.
    int32 internal constant SPENDER_ACCOUNT_REPEATED_IN_ALLOWANCES = 296; // [Deprecated] Spender is repeated more than once in Crypto or Token or NFT allowance lists in a single CryptoApproveAllowance transaction.
    int32 internal constant REPEATED_SERIAL_NUMS_IN_NFT_ALLOWANCES = 297; // [Deprecated] Serial numbers are repeated in nft allowance for a single spender account
    int32 internal constant FUNGIBLE_TOKEN_IN_NFT_ALLOWANCES = 298; // Fungible common token used in NFT allowances
    int32 internal constant NFT_IN_FUNGIBLE_TOKEN_ALLOWANCES = 299; // Non fungible token used in fungible token allowances
    int32 internal constant INVALID_ALLOWANCE_OWNER_ID = 300; // The account id specified as the owner is invalid or does not exist.
    int32 internal constant INVALID_ALLOWANCE_SPENDER_ID = 301; // The account id specified as the spender is invalid or does not exist.
    int32 internal constant REPEATED_ALLOWANCES_TO_DELETE = 302; // [Deprecated] If the CryptoDeleteAllowance transaction has repeated crypto or token or NFT allowances to delete.
    int32 internal constant INVALID_DELEGATING_SPENDER = 303; // If the account Id specified as the delegating spender is invalid or does not exist.
    int32 internal constant DELEGATING_SPENDER_CANNOT_GRANT_APPROVE_FOR_ALL =
        304; // The delegating Spender cannot grant approveForAll allowance on a NFT token type for another spender.
    int32 internal constant DELEGATING_SPENDER_DOES_NOT_HAVE_APPROVE_FOR_ALL =
        305; // The delegating Spender cannot grant allowance on a NFT serial for another spender as it doesnt not have approveForAll granted on token-owner.
    int32 internal constant SCHEDULE_EXPIRATION_TIME_TOO_FAR_IN_FUTURE = 306; // The scheduled transaction could not be created because it's expiration_time was too far in the future.
    int32
        internal constant SCHEDULE_EXPIRATION_TIME_MUST_BE_HIGHER_THAN_CONSENSUS_TIME =
        307; // The scheduled transaction could not be created because it's expiration_time was less than or equal to the consensus time.
    int32 internal constant SCHEDULE_FUTURE_THROTTLE_EXCEEDED = 308; // The scheduled transaction could not be created because it would cause throttles to be violated on the specified expiration_time.
    int32 internal constant SCHEDULE_FUTURE_GAS_LIMIT_EXCEEDED = 309; // The scheduled transaction could not be created because it would cause the gas limit to be violated on the specified expiration_time.
    int32 internal constant INVALID_ETHEREUM_TRANSACTION = 310; // The ethereum transaction either failed parsing or failed signature validation, or some other EthereumTransaction error not covered by another response code.
    int32 internal constant WRONG_CHAIN_ID = 311; // EthereumTransaction was signed against a chainId that this network does not support.
    int32 internal constant WRONG_NONCE = 312; // This transaction specified an ethereumNonce that is not the current ethereumNonce of the account.
    int32 internal constant ACCESS_LIST_UNSUPPORTED = 313; // The ethereum transaction specified an access list, which the network does not support.
    int32 internal constant SCHEDULE_PENDING_EXPIRATION = 314; // A schedule being signed or deleted has passed it's expiration date and is pending execution if needed and then expiration.
    int32 internal constant CONTRACT_IS_TOKEN_TREASURY = 315; // A selfdestruct or ContractDelete targeted a contract that is a token treasury.
    int32 internal constant CONTRACT_HAS_NON_ZERO_TOKEN_BALANCES = 316; // A selfdestruct or ContractDelete targeted a contract with non-zero token balances.
    int32 internal constant CONTRACT_EXPIRED_AND_PENDING_REMOVAL = 317; // A contract referenced by a transaction is "detached"; that is, expired and lacking any hbar funds for auto-renewal payment---but still within its post-expiry grace period.
    int32 internal constant CONTRACT_HAS_NO_AUTO_RENEW_ACCOUNT = 318; // A ContractUpdate requested removal of a contract's auto-renew account, but that contract has no auto-renew account.
    int32 internal constant PERMANENT_REMOVAL_REQUIRES_SYSTEM_INITIATION = 319; // A delete transaction submitted via HAPI set permanent_removal=true
    int32 internal constant PROXY_ACCOUNT_ID_FIELD_IS_DEPRECATED = 320; // A CryptoCreate or ContractCreate used the deprecated proxyAccountID field.
    int32 internal constant SELF_STAKING_IS_NOT_ALLOWED = 321; // An account set the staked_account_id to itself in CryptoUpdate or ContractUpdate transactions.
    int32 internal constant INVALID_STAKING_ID = 322; // The staking account id or staking node id given is invalid or does not exist.
    int32 internal constant STAKING_NOT_ENABLED = 323; // Native staking, while implemented, has not yet enabled by the council.
    int32 internal constant INVALID_PRNG_RANGE = 324; // The range provided in UtilPrng transaction is negative.
    int32 internal constant MAX_ENTITIES_IN_PRICE_REGIME_HAVE_BEEN_CREATED =
        325; // The maximum number of entities allowed in the current price regime have been created.
    int32 internal constant INVALID_FULL_PREFIX_SIGNATURE_FOR_PRECOMPILE = 326; // The full prefix signature for precompile is not valid
    int32 internal constant INSUFFICIENT_BALANCES_FOR_STORAGE_RENT = 327; // The combined balances of a contract and its auto-renew account (if any) did not cover the rent charged for net new storage used in a transaction.
    int32 internal constant MAX_CHILD_RECORDS_EXCEEDED = 328; // A contract transaction tried to use more than the allowed number of child records, via either system contract records or internal contract creations.
    int32 internal constant INSUFFICIENT_BALANCES_FOR_RENEWAL_FEES = 329; // The combined balances of a contract and its auto-renew account (if any) or balance of an account did not cover the auto-renewal fees in a transaction.
}
