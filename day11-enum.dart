enum Status{ // enum사용이유: enum중에서의 value만 사용한다는 의미와 협업시 유용
  approved, // 승인
  pending, // 대기
  rejected, // 거절
}

void main() {
  Status status = Status.pending;

  if(status == Status.approved){
    print('승인상태');
  }else if(status == Status.pending){
    print('대기상태');
  }else {
    print('거절상태');
  }
}
