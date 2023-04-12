// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract CrudOperation{
    Task[] tasks;
    
    struct Task{
         string content ;
         bool status;
    } 

    constructor(bool _status){
        _status = false;
    }

    // add task
    function add(string memory _content) public {
        tasks.push(Task(_content, true));
    }

    // updaet task
    function update(uint _id, string memory _content) public {
        tasks[_id].content = _content;
    }

    // get a task
    function get(uint _id) public view returns (Task memory){
        return tasks[_id];
    }

    // list all tasks
    function list() public view returns (Task[] memory){
        return tasks;
    }

    // delete task
    function remove(uint _id) public {
        delete tasks[_id];
    }
}

