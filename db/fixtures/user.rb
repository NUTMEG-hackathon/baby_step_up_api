User.seed( :id,
    { id: 1 ,   name: 'mizu' ,
                email: 'mizu@email.com' ,
                password: 'mizumizu' ,
                password_confirmation: 'mizumizu' ,
                select_template: 0 ,
                doing_step: 0 ,
                reset_time: '12:00'
    },
    { id: 2 ,   name: 'mashimo' ,
                email: 'mashimo@email.com' ,
                password: 'mashimashi' ,
                password_confirmation: 'mashimashi' ,
                select_template: 0 ,
                doing_step: 0 ,
                reset_time: '12:00'
    }
)

