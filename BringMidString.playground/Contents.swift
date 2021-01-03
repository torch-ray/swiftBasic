//배열로 변경 후에 다시 문자열로 전환
func solution(_ s:String) -> String {
    if s.count % 2 == 0 {
        return String(Array(s)[(s.count-1)/2...s.count/2])
    } else {
        return String(Array(s)[s.count/2])
    }
}

solution("abcde") // return "c"
solution("qwer") // return "we"

//문자열 인덱스 활용
func solution2(_ s:String) -> String {
    let mid1 = s.index(s.startIndex, offsetBy: (s.count-1)/2)
    let mid2 = s.index(s.startIndex, offsetBy: s.count/2)
    return String(s[mid1...mid2])
}

solution2("abcde") // return "c"
solution2("qwer") // return "we"

//다른사람 풀이
func solution3(_ s:String) -> String {
    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
}

solution3("abcde") // return "c"
solution3("qwer") // return "we"
