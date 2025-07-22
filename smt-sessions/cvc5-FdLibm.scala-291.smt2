; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1873 () Bool)

(assert start!1873)

(declare-fun b!10170 () Bool)

(declare-fun res!8435 () Bool)

(declare-fun e!5356 () Bool)

(assert (=> b!10170 (=> (not res!8435) (not e!5356))))

(declare-datatypes ((array!714 0))(
  ( (array!715 (arr!309 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!309 (_ BitVec 32))) )
))
(declare-fun f!58 () array!714)

(declare-fun fInv!0 (array!714) Bool)

(assert (=> b!10170 (= res!8435 (fInv!0 f!58))))

(declare-fun res!8433 () Bool)

(declare-fun e!5355 () Bool)

(assert (=> start!1873 (=> (not res!8433) (not e!5355))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1873 (= res!8433 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1873 e!5355))

(assert (=> start!1873 true))

(declare-fun xx!44 () array!714)

(declare-fun array_inv!259 (array!714) Bool)

(assert (=> start!1873 (array_inv!259 xx!44)))

(assert (=> start!1873 (array_inv!259 f!58)))

(declare-fun b!10168 () Bool)

(declare-fun res!8434 () Bool)

(assert (=> b!10168 (=> (not res!8434) (not e!5355))))

(declare-fun xxInv!0 (array!714) Bool)

(assert (=> b!10168 (= res!8434 (xxInv!0 xx!44))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun b!10171 () Bool)

(declare-fun lt!4801 () (_ BitVec 32))

(declare-fun lt!4802 () (_ BitVec 32))

(assert (=> b!10171 (= e!5356 (and (bvsle i!179 (bvadd lt!4801 jz!32)) (bvsge (bvadd (bvsub lt!4802 lt!4801) i!179) #b00000000000000000000000000000000) (not (= (bvand lt!4802 #b10000000000000000000000000000000) (bvand lt!4801 #b10000000000000000000000000000000))) (not (= (bvand lt!4802 #b10000000000000000000000000000000) (bvand (bvsub lt!4802 lt!4801) #b10000000000000000000000000000000)))))))

(declare-fun b!10169 () Bool)

(assert (=> b!10169 (= e!5355 e!5356)))

(declare-fun res!8436 () Bool)

(assert (=> b!10169 (=> (not res!8436) (not e!5356))))

(assert (=> b!10169 (= res!8436 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd lt!4802 #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4801 jz!32 #b00000000000000000000000000000001))))))

(declare-fun lt!4800 () (_ BitVec 32))

(assert (=> b!10169 (= lt!4802 (ite (bvslt lt!4800 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4800))))

(assert (=> b!10169 (= lt!4800 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10169 (= lt!4801 (bvsub (size!309 xx!44) #b00000000000000000000000000000001))))

(assert (= (and start!1873 res!8433) b!10168))

(assert (= (and b!10168 res!8434) b!10169))

(assert (= (and b!10169 res!8436) b!10170))

(assert (= (and b!10170 res!8435) b!10171))

(declare-fun m!18031 () Bool)

(assert (=> b!10170 m!18031))

(declare-fun m!18033 () Bool)

(assert (=> start!1873 m!18033))

(declare-fun m!18035 () Bool)

(assert (=> start!1873 m!18035))

(declare-fun m!18037 () Bool)

(assert (=> b!10168 m!18037))

(push 1)

(assert (not b!10170))

(assert (not b!10168))

(assert (not start!1873))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

