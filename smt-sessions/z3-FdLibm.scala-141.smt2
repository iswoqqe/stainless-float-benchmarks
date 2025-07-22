; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1079 () Bool)

(assert start!1079)

(declare-fun res!3704 () Bool)

(declare-fun e!2526 () Bool)

(assert (=> start!1079 (=> (not res!3704) (not e!2526))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!368 0))(
  ( (array!369 (arr!159 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!159 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!368)

(assert (=> start!1079 (= res!3704 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!159 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1079 e!2526))

(assert (=> start!1079 true))

(declare-fun array_inv!109 (array!368) Bool)

(assert (=> start!1079 (array_inv!109 qq!69)))

(declare-fun b!4801 () Bool)

(declare-fun res!3705 () Bool)

(assert (=> b!4801 (=> (not res!3705) (not e!2526))))

(declare-fun qqInv!0 (array!368) Bool)

(assert (=> b!4801 (= res!3705 (qqInv!0 qq!69))))

(declare-fun b!4802 () Bool)

(assert (=> b!4802 (= e!2526 false)))

(assert (= (and start!1079 res!3704) b!4801))

(assert (= (and b!4801 res!3705) b!4802))

(declare-fun m!6173 () Bool)

(assert (=> start!1079 m!6173))

(declare-fun m!6175 () Bool)

(assert (=> b!4801 m!6175))

(declare-fun m!6177 () Bool)

(assert (=> b!4802 m!6177))

(declare-fun m!6179 () Bool)

(assert (=> b!4802 m!6179))

(declare-fun m!6181 () Bool)

(assert (=> b!4802 m!6181))

(check-sat (not b!4801) (not start!1079))
(check-sat)
