require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test 'opens all tasks page' do
    get tasks_path
    assert_response :success
  end

  test 'opens one task page' do
    task = Task.create(name: 'test', description: 'test', creator: 'test')
    get task_path(task.id)
    assert_response :success
  end

  test 'create task' do
    post tasks_url, params: { task: { name: 'test', description: 'test', creator: 'test' } }

    task = Task.find_by name: 'test', description: 'test', creator: 'test'

    assert { task }
    assert_redirected_to task_url(task)
  end

  test 'update task' do
    task = tasks(:one)
    patch task_url(task), params: { task: { name: 'test', description: 'test', creator: 'test' } }

    task.reload

    assert { task.name == 'test' }
    assert_redirected_to task_url(task)
  end

  test 'destroy task' do
    task = tasks(:one)
    delete task_url(task)

    assert_redirected_to tasks_url

    assert { !Task.exists? task.id }
  end
end
