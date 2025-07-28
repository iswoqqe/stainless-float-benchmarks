; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2807 () Bool)

(assert start!2807)

(declare-fun res!12201 () Bool)

(declare-fun e!8709 () Bool)

(assert (=> start!2807 (=> (not res!12201) (not e!8709))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2807 (= res!12201 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2807 e!8709))

(assert (=> start!2807 true))

(declare-datatypes ((array!1230 0))(
  ( (array!1231 (arr!539 (Array (_ BitVec 32) (_ BitVec 32))) (size!539 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1230)

(declare-fun array_inv!487 (array!1230) Bool)

(assert (=> start!2807 (array_inv!487 iq!146)))

(declare-datatypes ((array!1232 0))(
  ( (array!1233 (arr!540 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!540 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1232)

(declare-fun array_inv!488 (array!1232) Bool)

(assert (=> start!2807 (array_inv!488 q!79)))

(declare-fun b!15643 () Bool)

(declare-fun res!12204 () Bool)

(assert (=> b!15643 (=> (not res!12204) (not e!8709))))

(declare-fun iqInv!0 (array!1230) Bool)

(assert (=> b!15643 (= res!12204 (iqInv!0 iq!146))))

(declare-fun b!15641 () Bool)

(declare-fun res!12202 () Bool)

(assert (=> b!15641 (=> (not res!12202) (not e!8709))))

(declare-fun qInv!0 (array!1232) Bool)

(assert (=> b!15641 (= res!12202 (qInv!0 q!79))))

(declare-fun b!15642 () Bool)

(declare-fun res!12203 () Bool)

(assert (=> b!15642 (=> (not res!12203) (not e!8709))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!15642 (= res!12203 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!15644 () Bool)

(assert (=> b!15644 (= e!8709 (and (bvsgt j!78 #b00000000000000000000000000000000) (bvslt j!78 #b00000000000000000000000000000000)))))

(assert (= (and start!2807 res!12201) b!15641))

(assert (= (and b!15641 res!12202) b!15642))

(assert (= (and b!15642 res!12203) b!15643))

(assert (= (and b!15643 res!12204) b!15644))

(declare-fun m!23771 () Bool)

(assert (=> start!2807 m!23771))

(declare-fun m!23773 () Bool)

(assert (=> start!2807 m!23773))

(declare-fun m!23775 () Bool)

(assert (=> b!15643 m!23775))

(declare-fun m!23777 () Bool)

(assert (=> b!15641 m!23777))

(check-sat (not b!15641) (not start!2807) (not b!15643))
(check-sat)
