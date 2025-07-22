; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1921 () Bool)

(assert start!1921)

(declare-fun b!10426 () Bool)

(declare-fun res!8678 () Bool)

(declare-fun e!5572 () Bool)

(assert (=> b!10426 (=> (not res!8678) (not e!5572))))

(declare-datatypes ((array!743 0))(
  ( (array!744 (arr!322 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!322 (_ BitVec 32))) )
))
(declare-fun f!58 () array!743)

(declare-fun fInv!0 (array!743) Bool)

(assert (=> b!10426 (= res!8678 (fInv!0 f!58))))

(declare-fun b!10425 () Bool)

(declare-fun e!5570 () Bool)

(assert (=> b!10425 (= e!5570 e!5572)))

(declare-fun res!8680 () Bool)

(assert (=> b!10425 (=> (not res!8680) (not e!5572))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4963 () (_ BitVec 32))

(declare-fun lt!4964 () (_ BitVec 32))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> b!10425 (= res!8680 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4963 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4963) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4964 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!10425 (= lt!4963 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun xx!44 () array!743)

(assert (=> b!10425 (= lt!4964 (bvsub (size!322 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!10424 () Bool)

(declare-fun res!8679 () Bool)

(assert (=> b!10424 (=> (not res!8679) (not e!5570))))

(declare-fun xxInv!0 (array!743) Bool)

(assert (=> b!10424 (= res!8679 (xxInv!0 xx!44))))

(declare-fun res!8677 () Bool)

(assert (=> start!1921 (=> (not res!8677) (not e!5570))))

(assert (=> start!1921 (= res!8677 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1921 e!5570))

(assert (=> start!1921 true))

(declare-fun array_inv!272 (array!743) Bool)

(assert (=> start!1921 (array_inv!272 xx!44)))

(assert (=> start!1921 (array_inv!272 f!58)))

(declare-fun b!10427 () Bool)

(assert (=> b!10427 (= e!5572 (and (bvsle i!179 (bvadd lt!4964 jz!32)) (let ((i!181 (bvadd i!179 #b00000000000000000000000000000001))) (and (bvsgt i!181 (bvadd lt!4964 jz!32)) (bvsle #b00000000000000000000000000000000 i!181) (let ((lhs!64 (bvadd lt!4964 jz!32))) (and (= (bvand lhs!64 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lhs!64 #b10000000000000000000000000000000) (bvand (bvadd lhs!64 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))))))

(assert (= (and start!1921 res!8677) b!10424))

(assert (= (and b!10424 res!8679) b!10425))

(assert (= (and b!10425 res!8680) b!10426))

(assert (= (and b!10426 res!8678) b!10427))

(declare-fun m!18203 () Bool)

(assert (=> b!10426 m!18203))

(declare-fun m!18205 () Bool)

(assert (=> b!10424 m!18205))

(declare-fun m!18207 () Bool)

(assert (=> start!1921 m!18207))

(declare-fun m!18209 () Bool)

(assert (=> start!1921 m!18209))

(push 1)

(assert (not b!10426))

(assert (not start!1921))

(assert (not b!10424))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

