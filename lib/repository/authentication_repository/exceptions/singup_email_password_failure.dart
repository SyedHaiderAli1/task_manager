
class  SignUpWithEmailAndPasswordFailure{
  final String messege;
  SignUpWithEmailAndPasswordFailure([this.messege="An Unknown Error Occured"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'weak-password':
        return SignUpWithEmailAndPasswordFailure('Please Enter a Strong Password');
      case 'invalid-email':
        return SignUpWithEmailAndPasswordFailure('Email is Not Valid or Badly Formatted');
      case 'email-already-in-use':
        return SignUpWithEmailAndPasswordFailure('An Account Already Exists for that Email');
      case 'operation-not-allowed':
        return SignUpWithEmailAndPasswordFailure('Operation is Not Allowed. Please Contact Support.');
      case 'user-disable':
        return SignUpWithEmailAndPasswordFailure('This User has beedn Disabled. please Contact Support for help');
      default: return SignUpWithEmailAndPasswordFailure();
    }
  }

}