; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1097 () Bool)

(assert start!1097)

(declare-fun res!4054 () Bool)

(declare-fun e!2609 () Bool)

(assert (=> start!1097 (=> (not res!4054) (not e!2609))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!373 0))(
  ( (array!374 (arr!161 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!161 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!373)

(assert (=> start!1097 (= res!4054 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!161 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1097 e!2609))

(assert (=> start!1097 true))

(declare-fun array_inv!111 (array!373) Bool)

(assert (=> start!1097 (array_inv!111 qq!69)))

(declare-fun b!5181 () Bool)

(declare-fun res!4055 () Bool)

(assert (=> b!5181 (=> (not res!4055) (not e!2609))))

(declare-fun qqInv!0 (array!373) Bool)

(assert (=> b!5181 (= res!4055 (qqInv!0 qq!69))))

(declare-fun b!5182 () Bool)

(assert (=> b!5182 (= e!2609 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!161 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (fp.leq (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!161 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (bvsge #b00000000000000000000000000000001 (size!161 qq!69))))))

(assert (= (and start!1097 res!4054) b!5181))

(assert (= (and b!5181 res!4055) b!5182))

(declare-fun m!7873 () Bool)

(assert (=> start!1097 m!7873))

(declare-fun m!7875 () Bool)

(assert (=> b!5181 m!7875))

(declare-fun m!7877 () Bool)

(assert (=> b!5182 m!7877))

(declare-fun m!7879 () Bool)

(assert (=> b!5182 m!7879))

(declare-fun m!7881 () Bool)

(assert (=> b!5182 m!7881))

(check-sat (not b!5181) (not start!1097))
(check-sat)
