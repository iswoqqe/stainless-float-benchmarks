; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1889 () Bool)

(assert start!1889)

(declare-fun b!10234 () Bool)

(declare-fun res!8501 () Bool)

(declare-fun e!5423 () Bool)

(assert (=> b!10234 (=> (not res!8501) (not e!5423))))

(declare-datatypes ((array!725 0))(
  ( (array!726 (arr!314 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!314 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!725)

(declare-fun xxInv!0 (array!725) Bool)

(assert (=> b!10234 (= res!8501 (xxInv!0 xx!44))))

(declare-fun b!10235 () Bool)

(declare-fun e!5421 () Bool)

(assert (=> b!10235 (= e!5423 e!5421)))

(declare-fun res!8499 () Bool)

(assert (=> b!10235 (=> (not res!8499) (not e!5421))))

(declare-fun e!15 () (_ BitVec 32))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4841 () (_ BitVec 32))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun lt!4840 () (_ BitVec 32))

(assert (=> b!10235 (= res!8499 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4840 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4840) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4841 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!10235 (= lt!4840 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10235 (= lt!4841 (bvsub (size!314 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!10237 () Bool)

(assert (=> b!10237 (= e!5421 (and (bvsle i!179 (bvadd lt!4841 jz!32)) (= (bvand lt!4841 #b10000000000000000000000000000000) (bvand jz!32 #b10000000000000000000000000000000)) (not (= (bvand lt!4841 #b10000000000000000000000000000000) (bvand (bvadd lt!4841 jz!32) #b10000000000000000000000000000000)))))))

(declare-fun res!8500 () Bool)

(assert (=> start!1889 (=> (not res!8500) (not e!5423))))

(assert (=> start!1889 (= res!8500 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1889 e!5423))

(assert (=> start!1889 true))

(declare-fun array_inv!264 (array!725) Bool)

(assert (=> start!1889 (array_inv!264 xx!44)))

(declare-fun f!58 () array!725)

(assert (=> start!1889 (array_inv!264 f!58)))

(declare-fun b!10236 () Bool)

(declare-fun res!8502 () Bool)

(assert (=> b!10236 (=> (not res!8502) (not e!5421))))

(declare-fun fInv!0 (array!725) Bool)

(assert (=> b!10236 (= res!8502 (fInv!0 f!58))))

(assert (= (and start!1889 res!8500) b!10234))

(assert (= (and b!10234 res!8501) b!10235))

(assert (= (and b!10235 res!8499) b!10236))

(assert (= (and b!10236 res!8502) b!10237))

(declare-fun m!18075 () Bool)

(assert (=> b!10234 m!18075))

(declare-fun m!18077 () Bool)

(assert (=> start!1889 m!18077))

(declare-fun m!18079 () Bool)

(assert (=> start!1889 m!18079))

(declare-fun m!18081 () Bool)

(assert (=> b!10236 m!18081))

(push 1)

(assert (not b!10236))

(assert (not b!10234))

(assert (not start!1889))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

