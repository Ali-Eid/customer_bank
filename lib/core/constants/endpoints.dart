class Endpoints {
  static const API = '/api';
  static const TRANSFER_API = '/transfer/api';
  static const ACCOUNTS_API = '/accounts/api';
  static const BENEFICIARY_API = '/beneficiary_contacts/api';
  static const CHEQUEBOOK_API = '/chequebook/api';
  static const TERMS_DEPOSIT_API = '/terms-deposit/api';
  static const LOCATIONS_API = '/locations/api';

  //Auth
  static const LOGIN = '/login';
  static const SEND_OTP = '/send-otp';
  static const LOGOUT = '/logout';
  static const forgetPassword = '/forget-password';
  static const forgetPasswordAfterOtp = '/forget-password-after-otp';
  static const forgetPasswordSetNew = '/forget-password-set-new';

  //Accounts
  static const ACCOUNT_STATEMENTS = '/account-statement/{account_id}';
  static const ACCOUNT_STATEMENTS_SETTINGS = '/account-statement/settings';

  //Customer Accounts
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
  static const SYGS_TRANSFER = '/sygs_transfer';
  static const GET_BANKS = '/banks';
  static const REASONS = '/reasons';

  //Beneficiary
  static const BENEFICIARY = '/contacts';
  static const BENEFICIARY_BY_ID = '/contacts/{id}';
  static const RELATIONSHIPS = '/relationships';

  //chequebook
  static const MY_CHEQUEBOOK = '/my-chequebooks';
  static const PAGES_CHEQUEBOOK = '/pages';
  static const REQUEST_CHEQUEBOOK = '/request-new-chequebook';
  static const REPORT_STOLEN_CHEQUEBOOK = '/report-stolen-chequebook';

  //terms_deposit
  static const PACKAGES_TERMS_DEPOSIT = '/package';
  static const REQUEST_TERMS_DEPOSIT = '/request-terms-deposit';

  //Locations
  static const BRANCHES = '/branches';
  static const ATMS = '/atms';
  static const POS = '/pos';
  static const CITIES = '/cities';
}

class AuthEndpoints {
  static const API = '/api';
  static const LOGIN = '/login';
  static const LOGOUT = '/logout';

  //Accounts
  static const CUSTOMER_ACCOUNT = '/customer-accounts/api';
  static const MY_ACCOUNTS = '/getAccountsForCustomer/{customer_id}';
}
