class Endpoints {
  static const API = '/api';
  static const TRANSFER_API = '/transfer/api';

  //Auth
  static const LOGIN = '/login';
  static const SEND_OTP = '/send-otp';
  static const LOGOUT = '/logout';
  static const forgetPassword = '/forget-password';
  static const forgetPasswordAfterOtp = '/forget-password-after-otp';
  static const forgetPasswordSetNew = '/forget-password-set-new';

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
  static const STORE_LOCAL_TRANSFER = '/local_transfer';
  static const CONFIRM_LOCAL_TRANSFER = '/local_transfer/confirm';
  static const STORE_INTERNAL_TRANSFER = '/internal_transfer';
  static const CONFIRM_INTERNAL_TRANSFER = '/internal_transfer/confirm';
  static const STORE_SYGS_TRANSFER = '/sygs_transfer';
}

class AuthEndpoints {
  static const API = '/api';
  static const LOGIN = '/login';
  static const LOGOUT = '/logout';

  //Accounts
  static const CUSTOMER_ACCOUNT = '/customer-accounts/api';
  static const MY_ACCOUNTS = '/getAccountsForCustomer/{customer_id}';
}
