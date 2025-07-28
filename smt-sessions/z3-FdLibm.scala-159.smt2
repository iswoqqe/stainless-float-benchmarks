; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1129 () Bool)

(assert start!1129)

(declare-fun res!4150 () Bool)

(declare-fun e!2705 () Bool)

(assert (=> start!1129 (=> (not res!4150) (not e!2705))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!405 0))(
  ( (array!406 (arr!177 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!177 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!405)

(assert (=> start!1129 (= res!4150 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!177 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1129 e!2705))

(assert (=> start!1129 true))

(declare-fun array_inv!127 (array!405) Bool)

(assert (=> start!1129 (array_inv!127 qq!69)))

(declare-fun b!5277 () Bool)

(declare-fun res!4151 () Bool)

(assert (=> b!5277 (=> (not res!4151) (not e!2705))))

(declare-fun qqInv!0 (array!405) Bool)

(assert (=> b!5277 (= res!4151 (qqInv!0 qq!69))))

(declare-fun b!5278 () Bool)

(assert (=> b!5278 (= e!2705 false)))

(assert (= (and start!1129 res!4150) b!5277))

(assert (= (and b!5277 res!4151) b!5278))

(declare-fun m!8105 () Bool)

(assert (=> start!1129 m!8105))

(declare-fun m!8107 () Bool)

(assert (=> b!5277 m!8107))

(declare-fun m!8109 () Bool)

(assert (=> b!5278 m!8109))

(declare-fun m!8111 () Bool)

(assert (=> b!5278 m!8111))

(declare-fun m!8113 () Bool)

(assert (=> b!5278 m!8113))

(declare-fun m!8115 () Bool)

(assert (=> b!5278 m!8115))

(declare-fun m!8117 () Bool)

(assert (=> b!5278 m!8117))

(declare-fun m!8119 () Bool)

(assert (=> b!5278 m!8119))

(declare-fun m!8121 () Bool)

(assert (=> b!5278 m!8121))

(declare-fun m!8123 () Bool)

(assert (=> b!5278 m!8123))

(declare-fun m!8125 () Bool)

(assert (=> b!5278 m!8125))

(check-sat (not start!1129) (not b!5277))
(check-sat)
