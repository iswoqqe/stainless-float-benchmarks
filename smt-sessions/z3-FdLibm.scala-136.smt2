; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1069 () Bool)

(assert start!1069)

(declare-fun res!3674 () Bool)

(declare-fun e!2496 () Bool)

(assert (=> start!1069 (=> (not res!3674) (not e!2496))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!358 0))(
  ( (array!359 (arr!154 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!154 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!358)

(assert (=> start!1069 (= res!3674 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!154 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1069 e!2496))

(assert (=> start!1069 true))

(declare-fun array_inv!104 (array!358) Bool)

(assert (=> start!1069 (array_inv!104 qq!69)))

(declare-fun b!4771 () Bool)

(declare-fun res!3675 () Bool)

(assert (=> b!4771 (=> (not res!3675) (not e!2496))))

(declare-fun qqInv!0 (array!358) Bool)

(assert (=> b!4771 (= res!3675 (qqInv!0 qq!69))))

(declare-fun b!4772 () Bool)

(assert (=> b!4772 (= e!2496 false)))

(assert (= (and start!1069 res!3674) b!4771))

(assert (= (and b!4771 res!3675) b!4772))

(declare-fun m!6147 () Bool)

(assert (=> start!1069 m!6147))

(declare-fun m!6149 () Bool)

(assert (=> b!4771 m!6149))

(check-sat (not start!1069) (not b!4771))
(check-sat)
