; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2805 () Bool)

(assert start!2805)

(declare-fun res!12191 () Bool)

(declare-fun e!8699 () Bool)

(assert (=> start!2805 (=> (not res!12191) (not e!8699))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2805 (= res!12191 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2805 e!8699))

(assert (=> start!2805 true))

(declare-datatypes ((array!1228 0))(
  ( (array!1229 (arr!538 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!538 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1228)

(declare-fun array_inv!486 (array!1228) Bool)

(assert (=> start!2805 (array_inv!486 q!79)))

(declare-fun b!15631 () Bool)

(declare-fun res!12192 () Bool)

(assert (=> b!15631 (=> (not res!12192) (not e!8699))))

(declare-fun qInv!0 (array!1228) Bool)

(assert (=> b!15631 (= res!12192 (qInv!0 q!79))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun b!15632 () Bool)

(assert (=> b!15632 (= e!8699 false)))

(assert (= (and start!2805 res!12191) b!15631))

(assert (= (and b!15631 res!12192) b!15632))

(declare-fun m!23767 () Bool)

(assert (=> start!2805 m!23767))

(declare-fun m!23769 () Bool)

(assert (=> b!15631 m!23769))

(check-sat (not b!15631) (not start!2805))
(check-sat)
