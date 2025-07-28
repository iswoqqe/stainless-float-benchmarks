; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2803 () Bool)

(assert start!2803)

(declare-fun res!12185 () Bool)

(declare-fun e!8693 () Bool)

(assert (=> start!2803 (=> (not res!12185) (not e!8693))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2803 (= res!12185 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2803 e!8693))

(assert (=> start!2803 true))

(declare-datatypes ((array!1226 0))(
  ( (array!1227 (arr!537 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!537 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1226)

(declare-fun array_inv!485 (array!1226) Bool)

(assert (=> start!2803 (array_inv!485 q!79)))

(declare-fun b!15625 () Bool)

(declare-fun res!12186 () Bool)

(assert (=> b!15625 (=> (not res!12186) (not e!8693))))

(declare-fun qInv!0 (array!1226) Bool)

(assert (=> b!15625 (= res!12186 (qInv!0 q!79))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun b!15626 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!15626 (= e!8693 false)))

(assert (= (and start!2803 res!12185) b!15625))

(assert (= (and b!15625 res!12186) b!15626))

(declare-fun m!23763 () Bool)

(assert (=> start!2803 m!23763))

(declare-fun m!23765 () Bool)

(assert (=> b!15625 m!23765))

(check-sat (not start!2803) (not b!15625))
(check-sat)
