; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1919 () Bool)

(assert start!1919)

(declare-fun res!8668 () Bool)

(declare-fun e!5558 () Bool)

(assert (=> start!1919 (=> (not res!8668) (not e!5558))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1919 (= res!8668 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1919 e!5558))

(assert (=> start!1919 true))

(declare-datatypes ((array!741 0))(
  ( (array!742 (arr!321 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!321 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!741)

(declare-fun array_inv!271 (array!741) Bool)

(assert (=> start!1919 (array_inv!271 xx!44)))

(declare-fun f!58 () array!741)

(assert (=> start!1919 (array_inv!271 f!58)))

(declare-fun b!10413 () Bool)

(declare-fun e!5561 () Bool)

(assert (=> b!10413 (= e!5558 e!5561)))

(declare-fun res!8665 () Bool)

(assert (=> b!10413 (=> (not res!8665) (not e!5561))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4958 () (_ BitVec 32))

(declare-fun lt!4957 () (_ BitVec 32))

(assert (=> b!10413 (= res!8665 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4957 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4957) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4958 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!10413 (= lt!4957 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10413 (= lt!4958 (bvsub (size!321 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!10415 () Bool)

(assert (=> b!10415 (= e!5561 (and (bvsle i!179 (bvadd lt!4958 jz!32)) (let ((i!181 (bvadd i!179 #b00000000000000000000000000000001))) (and (bvsgt i!181 (bvadd lt!4958 jz!32)) (bvsle #b00000000000000000000000000000000 i!181) (= (bvand lt!4958 #b10000000000000000000000000000000) (bvand jz!32 #b10000000000000000000000000000000)) (not (= (bvand lt!4958 #b10000000000000000000000000000000) (bvand (bvadd lt!4958 jz!32) #b10000000000000000000000000000000)))))))))

(declare-fun b!10414 () Bool)

(declare-fun res!8666 () Bool)

(assert (=> b!10414 (=> (not res!8666) (not e!5561))))

(declare-fun fInv!0 (array!741) Bool)

(assert (=> b!10414 (= res!8666 (fInv!0 f!58))))

(declare-fun b!10412 () Bool)

(declare-fun res!8667 () Bool)

(assert (=> b!10412 (=> (not res!8667) (not e!5558))))

(declare-fun xxInv!0 (array!741) Bool)

(assert (=> b!10412 (= res!8667 (xxInv!0 xx!44))))

(assert (= (and start!1919 res!8668) b!10412))

(assert (= (and b!10412 res!8667) b!10413))

(assert (= (and b!10413 res!8665) b!10414))

(assert (= (and b!10414 res!8666) b!10415))

(declare-fun m!18195 () Bool)

(assert (=> start!1919 m!18195))

(declare-fun m!18197 () Bool)

(assert (=> start!1919 m!18197))

(declare-fun m!18199 () Bool)

(assert (=> b!10414 m!18199))

(declare-fun m!18201 () Bool)

(assert (=> b!10412 m!18201))

(push 1)

(assert (not start!1919))

(assert (not b!10412))

(assert (not b!10414))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

