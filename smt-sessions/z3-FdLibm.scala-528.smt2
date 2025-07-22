; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2801 () Bool)

(assert start!2801)

(declare-fun b!15292 () Bool)

(declare-fun e!8707 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> b!15292 (= e!8707 (and (bvsgt j!78 #b00000000000000000000000000000000) (not (= (bvand jz!49 #b10000000000000000000000000000000) (bvand j!78 #b10000000000000000000000000000000))) (not (= (bvand jz!49 #b10000000000000000000000000000000) (bvand (bvsub jz!49 j!78) #b10000000000000000000000000000000)))))))

(declare-fun b!15291 () Bool)

(declare-fun res!11889 () Bool)

(assert (=> b!15291 (=> (not res!11889) (not e!8707))))

(declare-datatypes ((array!1265 0))(
  ( (array!1266 (arr!557 (Array (_ BitVec 32) (_ BitVec 32))) (size!557 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1265)

(declare-fun iqInv!0 (array!1265) Bool)

(assert (=> b!15291 (= res!11889 (iqInv!0 iq!146))))

(declare-fun res!11892 () Bool)

(assert (=> start!2801 (=> (not res!11892) (not e!8707))))

(assert (=> start!2801 (= res!11892 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2801 e!8707))

(assert (=> start!2801 true))

(declare-fun array_inv!505 (array!1265) Bool)

(assert (=> start!2801 (array_inv!505 iq!146)))

(declare-datatypes ((array!1267 0))(
  ( (array!1268 (arr!558 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!558 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1267)

(declare-fun array_inv!506 (array!1267) Bool)

(assert (=> start!2801 (array_inv!506 q!79)))

(declare-fun b!15289 () Bool)

(declare-fun res!11891 () Bool)

(assert (=> b!15289 (=> (not res!11891) (not e!8707))))

(declare-fun qInv!0 (array!1267) Bool)

(assert (=> b!15289 (= res!11891 (qInv!0 q!79))))

(declare-fun b!15290 () Bool)

(declare-fun res!11890 () Bool)

(assert (=> b!15290 (=> (not res!11890) (not e!8707))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(assert (=> b!15290 (= res!11890 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (= (and start!2801 res!11892) b!15289))

(assert (= (and b!15289 res!11891) b!15290))

(assert (= (and b!15290 res!11890) b!15291))

(assert (= (and b!15291 res!11889) b!15292))

(declare-fun m!21513 () Bool)

(assert (=> b!15291 m!21513))

(declare-fun m!21515 () Bool)

(assert (=> start!2801 m!21515))

(declare-fun m!21517 () Bool)

(assert (=> start!2801 m!21517))

(declare-fun m!21519 () Bool)

(assert (=> b!15289 m!21519))

(check-sat (not b!15289) (not start!2801) (not b!15291))
(check-sat)
