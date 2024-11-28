class Endpoints {
  static const API = '/api';
  static const LOGIN = '/login';
  static const SEND_OTP = '/send-otp';
  static const LOGOUT = '/logout';

  //Accounts
  static const CUSTOMER_ACCOUNT = '/customer-accounts/api';
  static const MY_ACCOUNTS = '/getAccountsForCustomer/{customer_id}';

  //Card
  static const CARD = '/cards/api';
  static const MY_CARD = '/cards';
  static const WITHDRAWAL_VALUES = '/withdrawal_values';
  static const BENEFICIARY_TYPES = '/beneficiary_types';
  static const CARD_TYPES = '/card_types';
  static const NEW_CARD = '/request_new_card';
  static const IN_ACTIVE_CARD = '/inactive_requests';
  static const INCREASE_WITHDRAWAL_CARD = '/withdrawal_requests';

  //Transfer
  static const BANK_CONNECTOR = '/bank-connecter/api';
  static const ACCOUNTS_TRANSFARE = '/accounts/newtransfer';
}
