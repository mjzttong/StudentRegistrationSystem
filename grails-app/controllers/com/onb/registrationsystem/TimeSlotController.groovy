package com.onb.registrationsystem

import org.springframework.dao.DataIntegrityViolationException

class TimeSlotController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [timeSlotInstanceList: TimeSlot.list(params), timeSlotInstanceTotal: TimeSlot.count()]
    }

    def create() {
        [timeSlotInstance: new TimeSlot(params)]
    }

    def save() {
        def timeSlotInstance = new TimeSlot(params)
        if (!timeSlotInstance.save(flush: true)) {
            render(view: "create", model: [timeSlotInstance: timeSlotInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'timeSlot.label', default: 'TimeSlot'), timeSlotInstance.id])
        redirect(action: "show", id: timeSlotInstance.id)
    }

    def show() {
        def timeSlotInstance = TimeSlot.get(params.id)
        if (!timeSlotInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'timeSlot.label', default: 'TimeSlot'), params.id])
            redirect(action: "list")
            return
        }

        [timeSlotInstance: timeSlotInstance]
    }

    def edit() {
        def timeSlotInstance = TimeSlot.get(params.id)
        if (!timeSlotInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'timeSlot.label', default: 'TimeSlot'), params.id])
            redirect(action: "list")
            return
        }

        [timeSlotInstance: timeSlotInstance]
    }

    def update() {
        def timeSlotInstance = TimeSlot.get(params.id)
        if (!timeSlotInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'timeSlot.label', default: 'TimeSlot'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (timeSlotInstance.version > version) {
                timeSlotInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'timeSlot.label', default: 'TimeSlot')] as Object[],
                          "Another user has updated this TimeSlot while you were editing")
                render(view: "edit", model: [timeSlotInstance: timeSlotInstance])
                return
            }
        }

        timeSlotInstance.properties = params

        if (!timeSlotInstance.save(flush: true)) {
            render(view: "edit", model: [timeSlotInstance: timeSlotInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'timeSlot.label', default: 'TimeSlot'), timeSlotInstance.id])
        redirect(action: "show", id: timeSlotInstance.id)
    }

    def delete() {
        def timeSlotInstance = TimeSlot.get(params.id)
        if (!timeSlotInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'timeSlot.label', default: 'TimeSlot'), params.id])
            redirect(action: "list")
            return
        }

        try {
            timeSlotInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'timeSlot.label', default: 'TimeSlot'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'timeSlot.label', default: 'TimeSlot'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
