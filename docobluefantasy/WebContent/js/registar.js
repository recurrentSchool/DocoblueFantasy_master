/**
 *
 */

function CheckPass()
{

    var pass1 = document.getElementById("pass1").value; //メールフォームの値を取得
    var pass2 = document.getElementById("pass2").value; //メール確認用フォームの値を取得
    // パスワードの一致確認
    if (pass1 != pass2)
    {
      alert("パスワードと確認用パスワードが一致しません"); // 一致していなかったら、エラーメッセージを表示する
      return false;
    }else{
      return true;
    }
}