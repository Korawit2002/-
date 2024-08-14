// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    // กำหนดตัวแปรสำหรับเก็บข้อมูลนักศึกษา
    uint256 private studentID;
    string private firstName;
    string private lastName;
    uint8 private age;

    // ฟังก์ชันเพื่อตั้งค่ารหัสนักศึกษา
    function setStudentID(uint256 _studentID) public {
        studentID = _studentID;
    }

    // ฟังก์ชันเพื่อเรียกดูรหัสนักศึกษา
    function getStudentID() public view returns (uint256) {
        return studentID;
    }

    // ฟังก์ชันเพื่อตั้งค่าชื่อ
    function setFirstName(string memory _firstName) public {
        firstName = _firstName;
    }

    // ฟังก์ชันเพื่อเรียกดูชื่อ
    function getFirstName() public view returns (string memory) {
        return firstName;
    }

    // ฟังก์ชันเพื่อตั้งค่านามสกุล
    function setLastName(string memory _lastName) public {
        lastName = _lastName;
    }

    // ฟังก์ชันเพื่อเรียกดูนามสกุล
    function getLastName() public view returns (string memory) {
        return lastName;
    }

    // ฟังก์ชันเพื่อตั้งค่าอายุ
    function setAge(uint8 _age) public {
        age = _age;
    }

    // ฟังก์ชันเพื่อเรียกดูอายุ
    function getAge() public view returns (uint8) {
        return age;
    }

    // ฟังก์ชันเพื่อแสดงรหัสนักศึกษา, ชื่อ, นามสกุล, และอายุพร้อมกัน
    function getStudentInfo() public view returns (uint256, string memory, string memory, uint8) {
        return (studentID, firstName, lastName, age);
    }
}
