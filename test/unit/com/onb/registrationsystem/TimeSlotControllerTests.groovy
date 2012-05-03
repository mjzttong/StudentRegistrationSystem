package com.onb.registrationsystem



import org.junit.*
import grails.test.mixin.*

@TestFor(TimeSlotController)
@Mock(TimeSlot)
class TimeSlotControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/timeSlot/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.timeSlotInstanceList.size() == 0
        assert model.timeSlotInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.timeSlotInstance != null
    }

    void testSave() {
        controller.save()

        assert model.timeSlotInstance != null
        assert view == '/timeSlot/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/timeSlot/show/1'
        assert controller.flash.message != null
        assert TimeSlot.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/timeSlot/list'


        populateValidParams(params)
        def timeSlot = new TimeSlot(params)

        assert timeSlot.save() != null

        params.id = timeSlot.id

        def model = controller.show()

        assert model.timeSlotInstance == timeSlot
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/timeSlot/list'


        populateValidParams(params)
        def timeSlot = new TimeSlot(params)

        assert timeSlot.save() != null

        params.id = timeSlot.id

        def model = controller.edit()

        assert model.timeSlotInstance == timeSlot
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/timeSlot/list'

        response.reset()


        populateValidParams(params)
        def timeSlot = new TimeSlot(params)

        assert timeSlot.save() != null

        // test invalid parameters in update
        params.id = timeSlot.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/timeSlot/edit"
        assert model.timeSlotInstance != null

        timeSlot.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/timeSlot/show/$timeSlot.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        timeSlot.clearErrors()

        populateValidParams(params)
        params.id = timeSlot.id
        params.version = -1
        controller.update()

        assert view == "/timeSlot/edit"
        assert model.timeSlotInstance != null
        assert model.timeSlotInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/timeSlot/list'

        response.reset()

        populateValidParams(params)
        def timeSlot = new TimeSlot(params)

        assert timeSlot.save() != null
        assert TimeSlot.count() == 1

        params.id = timeSlot.id

        controller.delete()

        assert TimeSlot.count() == 0
        assert TimeSlot.get(timeSlot.id) == null
        assert response.redirectedUrl == '/timeSlot/list'
    }
}
