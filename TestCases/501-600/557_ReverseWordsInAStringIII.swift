//
//  557_ReverseWordsInAStringIII.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/9/24.
//

import XCTest

final class ReverseWordsInAStringIII: XCTestCase {
  func testrReverseWords() throws {
    let solution = Solution_557()
    XCTAssertEqual(
      solution.reverseWords("Let's take LeetCode contest"),
      "s'teL ekat edoCteeL tsetnoc"
    )
    XCTAssertEqual(solution.reverseWords("Mr Ding"), "rM gniD")
    XCTAssertEqual(
      solution.reverseWords("Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order. Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order. Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order. Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order. Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order. Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order. Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order. Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order. Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order. Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order."),
      "neviG a gnirts ,s esrever eht redro fo sretcarahc ni hcae drow nihtiw a ecnetnes elihw llits gnivreserp ecapsetihw dna laitini drow .redro neviG a gnirts ,s esrever eht redro fo sretcarahc ni hcae drow nihtiw a ecnetnes elihw llits gnivreserp ecapsetihw dna laitini drow .redro neviG a gnirts ,s esrever eht redro fo sretcarahc ni hcae drow nihtiw a ecnetnes elihw llits gnivreserp ecapsetihw dna laitini drow .redro neviG a gnirts ,s esrever eht redro fo sretcarahc ni hcae drow nihtiw a ecnetnes elihw llits gnivreserp ecapsetihw dna laitini drow .redro neviG a gnirts ,s esrever eht redro fo sretcarahc ni hcae drow nihtiw a ecnetnes elihw llits gnivreserp ecapsetihw dna laitini drow .redro neviG a gnirts ,s esrever eht redro fo sretcarahc ni hcae drow nihtiw a ecnetnes elihw llits gnivreserp ecapsetihw dna laitini drow .redro neviG a gnirts ,s esrever eht redro fo sretcarahc ni hcae drow nihtiw a ecnetnes elihw llits gnivreserp ecapsetihw dna laitini drow .redro neviG a gnirts ,s esrever eht redro fo sretcarahc ni hcae drow nihtiw a ecnetnes elihw llits gnivreserp ecapsetihw dna laitini drow .redro neviG a gnirts ,s esrever eht redro fo sretcarahc ni hcae drow nihtiw a ecnetnes elihw llits gnivreserp ecapsetihw dna laitini drow .redro neviG a gnirts ,s esrever eht redro fo sretcarahc ni hcae drow nihtiw a ecnetnes elihw llits gnivreserp ecapsetihw dna laitini drow .redro"
    )
  }
}
